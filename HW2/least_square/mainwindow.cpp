#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QTextStream>
#include <QGraphicsEllipseItem>
#include <QGraphicsLineItem>
#include <QPen>
#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    , scene(new QGraphicsScene(this))
{
    ui->setupUi(this);

    // QGraphicsView에 QGraphicsScene 설정
    ui->graphicsView->setScene(scene);
    ui->graphicsView->setRenderHint(QPainter::Antialiasing);

    // QGraphicsView의 좌표계를 변환하여 Y축을 위로 증가하도록 설정하고
    // 원점을 화면 중앙으로 이동
    ui->graphicsView->scale(-1, -1);  // Y축 반전
    ui->graphicsView->setSceneRect(-500, -500, 1000, 1000);  // 중앙을 원점으로 설정

    drawAxes();  // XY 축을 그리는 함수 호출
    loadCSVData(":/resources/data/coordinates.csv");  // CSV 파일 경로

    // 최소제곱법으로 최적 모델 계산 후 표시
    LineModel leastSquaresLine = fitLineWithLeastSquares(points);
    drawBestFitLine(leastSquaresLine);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::drawAxes()
{
    // XY 축의 원점 설정 (좌측 중앙부)
    int originX = 50;
    int originY = 0;

    // X, Y 축 그리기
    QPen axisPen(Qt::black);
    axisPen.setWidth(2);
    scene->addLine(originX, -1000, originX, 1000, axisPen);  // Y 축
    scene->addLine(-1000, originY, 1000, originY, axisPen);  // X 축
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

    // 첫 줄을 무시 (헤더)
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

                // 점을 QGraphicsEllipseItem으로 추가
                QGraphicsEllipseItem *pointItem = new QGraphicsEllipseItem(x - 1.5, -y - 1.5, 3, 3); // 반지름 1.5의 점
                pointItem->setBrush(Qt::blue);
                scene->addItem(pointItem);
            }
        }
    }
    file.close();
}

// 최소제곱법으로 최적의 직선 모델 계산
LineModel MainWindow::fitLineWithLeastSquares(const QVector<QPointF> &points) {
    double sumX = 0, sumY = 0, sumXY = 0, sumX2 = 0;
    int n = points.size();

    for (const auto &point : points) {
        sumX += point.x();
        sumY += point.y();
        sumXY += point.x() * point.y();
        sumX2 += point.x() * point.x();
    }

    double slope = (n * sumXY - sumX * sumY) / (n * sumX2 - sumX * sumX);
    double intercept = (sumY - slope * sumX) / n;

    return {slope, intercept};
}

// 최소제곱법으로 구한 직선을 그리기
void MainWindow::drawBestFitLine(const LineModel &model) {
    double x1 = -500, x2 = 500;
    double y1 = model.slope * x1 + model.intercept;
    double y2 = model.slope * x2 + model.intercept;

    QPen linePen(Qt::red);
    linePen.setWidth(2);
    scene->addLine(x1, -y1, x2, -y2, linePen);  // Y 좌표를 반전하여 화면에 그리기
}
