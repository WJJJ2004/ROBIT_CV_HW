#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QTextStream>
#include <QGraphicsEllipseItem>
#include <QPen>
#include <QDebug>
#include <cmath>
#include <cstdlib>
#include <ctime>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    , scene(new QGraphicsScene(this))
{
    ui->setupUi(this);

    // QGraphicsView에 QGraphicsScene 설정
    ui->graphicsView->setScene(scene);
    ui->graphicsView->setRenderHint(QPainter::Antialiasing);

    // QGraphicsView의 좌표계를 변환하여 Y축만 반전하여 위로 증가하도록 설정
    ui->graphicsView->scale(-1, -1);
    ui->graphicsView->setSceneRect(-1000, -1000, 2000, 2000);  // 중앙을 원점으로 설정

    drawAxes();  // XY 축을 그리는 함수 호출
    loadCSVData(":/resources/data/coordinates.csv");  // CSV 파일 경로

    // k-means 클러스터링 실행
    kMeansClustering(3); // K값을 3으로 설정
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::drawAxes()
{
    int originX = 0;
    int originY = 0;

    // X, Y 축 그리기
    QPen axisPen(Qt::black);
    axisPen.setWidth(2);
    scene->addLine(originX, -1000, originX, 1000, axisPen);  // Y 축
    scene->addLine(-1000, originY, 1000, originY, axisPen);  // X 축
}

void MainWindow::loadCSVData(const QString &fileName)
{
    qDebug() << "Loading file:" << fileName;
    QFile file(fileName);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        qWarning() << "Cannot open file for reading:" << file.errorString();
        return;
    }

    QTextStream in(&file);
    QString headerLine = in.readLine(); // 첫 줄을 무시 (헤더)

    while (!in.atEnd())
    {
        QString line = in.readLine();
        QStringList values = line.split(",");

        if (values.size() >= 2)
        {
            bool okX, okY;
            double x = values[0].toDouble(&okX);
            double y = values[1].toDouble(&okY);

            if (okX && okY)
            {
                points.append(QPointF(x, y));
                labels.append(0); // 초기 레이블 0으로 설정
            }
        }
    }
    file.close();
}

void MainWindow::kMeansClustering(int k)
{
    // 초기 클러스터 중심 설정 (랜덤 선택)
    QVector<QPointF> centroids;
    srand(time(0));
    for (int i = 0; i < k; ++i)
    {
        int randomIndex = rand() % points.size();
        centroids.append(points[randomIndex]);
    }

    bool hasConverged = false;
    while (!hasConverged)
    {
        hasConverged = true;

        // 각 포인트를 가장 가까운 클러스터에 할당
        for (int i = 0; i < points.size(); ++i)
        {
            double minDist = std::numeric_limits<double>::max();
            int bestCluster = 0;
            for (int j = 0; j < k; ++j)
            {
                double dist = std::pow(points[i].x() - centroids[j].x(), 2) + std::pow(points[i].y() - centroids[j].y(), 2);

                if (dist < minDist)
                {
                    minDist = dist;
                    bestCluster = j;
                }
            }
            if (labels[i] != bestCluster)
            {
                labels[i] = bestCluster;
                hasConverged = false;
            }
        }

        // 클러스터의 중심 업데이트
        QVector<QPointF> newCentroids(k, QPointF(0, 0));
        QVector<int> count(k, 0);
        for (int i = 0; i < points.size(); ++i)
        {
            newCentroids[labels[i]] += points[i];
            count[labels[i]] += 1;
        }

        for (int j = 0; j < k; ++j)
        {
            if (count[j] > 0)
                centroids[j] = QPointF(newCentroids[j].x() / count[j], newCentroids[j].y() / count[j]);
        }
    }

    QVector<QColor> colors = {Qt::red, Qt::green, Qt::blue}; // 각 클러스터의 색상
    for (int i = 0; i < points.size(); ++i)
    {
        QGraphicsEllipseItem *pointItem = new QGraphicsEllipseItem(points[i].x() * 50 - 1.5, -points[i].y() * 50 - 1.5, 3, 3);
        pointItem->setBrush(colors[labels[i]]);
        scene->addItem(pointItem);
    }
}
