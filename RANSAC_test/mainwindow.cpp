#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QTextStream>
#include <QPainter>
#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // 창 크기에 맞춰 Pixmap 크기 설정 및 초기화
    axesPixmap = QPixmap(size());
    axesPixmap.fill(Qt::white);  // 배경을 흰색으로 설정

    drawAxes();  // XY 축을 그리는 함수 호출
    loadCSVData(":/resources/data/coordinates.csv");  // CSV 파일 경로
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::drawAxes()
{
    QPainter painter(&axesPixmap);
    painter.setRenderHint(QPainter::Antialiasing);  // 부드러운 그리기 설정
    painter.setPen(Qt::black);

    // 원점 설정 (좌측 중앙부)
    int originX = 50;
    int originY = height() / 2;

    // XY 축 그리기
    painter.drawLine(originX, 0, originX, height());       // Y 축
    painter.drawLine(originX, originY, width(), originY);  // X 축
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
            }
        }
    }
    file.close();
    update(); // 화면 갱신
}

void MainWindow::paintEvent(QPaintEvent *event)
{
    QMainWindow::paintEvent(event);

    QPainter painter(this);
    painter.drawPixmap(0, 0, axesPixmap);  // XY 축이 그려진 Pixmap 복사

    painter.setPen(Qt::blue);
    for (const QPointF &point : points)
    {
        int originX = 50;
        int originY = height() / 2;

        int x = originX + static_cast<int>(point.x());
        int y = originY - static_cast<int>(point.y());
        painter.drawEllipse(QPoint(x, y), 2, 2); // 각 좌표에 반지름 3의 점을 그림
    }
}
