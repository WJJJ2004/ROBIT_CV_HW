#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QTextStream>
#include <QGraphicsEllipseItem>
#include <QGraphicsLineItem>
#include <QPen>
#include <QDebug>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <iostream>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    , scene(new QGraphicsScene(this))
{
    ui->setupUi(this);

    // QGraphicsView에 QGraphicsScene 설정
    ui->graphicsView->setScene(scene);
    ui->graphicsView->setRenderHint(QPainter::Antialiasing);

    // QGraphicsView 좌표계 변환 설정
    ui->graphicsView->scale(-1, -1);  // Y축 반전하여 위로 증가하도록 설정
    ui->graphicsView->setSceneRect(-500, -500, 1000, 1000);  // 중앙을 원점으로 설정

    drawAxes();  // XY 축을 그리는 함수 호출
    loadCSVData(":/resources/data/coordinates.csv");  // CSV 파일 경로

    // RANSAC을 통해 최적 모델 추정 후 표시
    LineModel bestLine = ransacLineFitting(points);
    drawBestFitLine(bestLine);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::drawAxes()
{
    QPen axisPen(Qt::black);
    axisPen.setWidth(2);
    scene->addLine(50, -1000, 50, 1000, axisPen);  // Y 축
    scene->addLine(-1000, 0, 1000, 0, axisPen);  // X 축
}

void MainWindow::loadCSVData(const QString &fileName)
{
    qDebug() << "Loading file:" << fileName;  // 경로 출력
    QFile file(fileName);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))      // 파일 에러 검사 코드
    {
        qWarning() << "Cannot open file for reading:" << file.errorString();
        return;
    }

    QTextStream in(&file);

    QString headerLine = in.readLine();

    while (!in.atEnd())
    {
        QString line = in.readLine();
        QStringList values = line.split(",");

        if (values.size() == 2)
        {
            bool okX, okY;
            double x = values[0].toDouble(&okX);
            double y = values[1].toDouble(&okY);

            if (okX && okY)
            {
                points.append(QPointF(x, y));

                QGraphicsEllipseItem *pointItem = new QGraphicsEllipseItem(x - 1.5, -y - 1.5, 3, 3);
                pointItem->setBrush(Qt::blue);
                scene->addItem(pointItem);
            }
        }
    }

    file.close();
}


LineModel fitLineModel(const QPointF &p1, const QPointF &p2)
{
    double slope = (p2.y() - p1.y()) / (p2.x() - p1.x());
    double intercept = p1.y() - slope * p1.x();
    return {slope, intercept};
}

double pointLineDistance(const QPointF &point, const LineModel &model)
{
    double numerator = std::abs(model.slope * point.x() - point.y() + model.intercept);
    double denominator = std::sqrt(model.slope * model.slope + 1);
    return numerator / denominator;
}

LineModel MainWindow::ransacLineFitting(const QVector<QPointF> &points)
{
    const int RANSAC_ITERATIONS = 100;
    const double DISTANCE_THRESHOLD = 50.0;
    int maxInliers = 0;
    LineModel bestModel = {0, 0};

    for (int i = 0; i < RANSAC_ITERATIONS; ++i)
    {
        QVector<QPointF> validPoints;
        for (const auto &p : points)
        {
            if (p.y() != 0)
            {
                validPoints.append(p);
            }
        }

        if (validPoints.size() < 2)
        {
            std::cerr << "Not enough valid points to fit the model." << std::endl;
            break;
        }

        int idx1 = std::rand() % validPoints.size();
        int idx2 = std::rand() % validPoints.size();

        while (idx1 == idx2)
        {
            idx2 = std::rand() % validPoints.size();
        }

        QPointF p1 = validPoints[idx1];
        QPointF p2 = validPoints[idx2];

        LineModel model = fitLineModel(p1, p2);

        int inliers = 0;
        for (const auto &point : points)
        {
            if (pointLineDistance(point, model) < DISTANCE_THRESHOLD)
            {
                ++inliers;
            }
        }

        if (inliers > maxInliers)
        {
            maxInliers = inliers;
            bestModel = model;
        }
    }

    return bestModel;
}

void MainWindow::drawBestFitLine(const LineModel &model)
{
    double y1 = model.slope * -500 + model.intercept;
    double y2 = model.slope * 500 + model.intercept;

    QPen linePen(Qt::red);
    linePen.setWidth(2);
    scene->addLine(-500, -y1, 500, -y2, linePen);  // Y 좌표를 반전하여 화면에 그리기

    // 기울기와 y절편 출력
    std::cout << "Best Line by RANSAC logic a: " << model.slope << ", b: " << model.intercept << std::endl;
}
