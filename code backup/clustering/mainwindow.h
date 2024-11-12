#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QGraphicsScene>
#include <QPointF>
#include <QVector>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    QGraphicsScene *scene;  // QGraphicsScene 객체 추가
    QVector<QPointF> points; // CSV 파일에서 불러온 좌표 데이터를 저장

    void drawAxes();                            // XY 축을 그리는 함수
    void loadCSVData(const QString &fileName); // CSV 데이터 로드 함수
};

#endif // MAINWINDOW_H
