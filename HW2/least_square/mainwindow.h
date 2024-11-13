#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QGraphicsScene>
#include <QPointF>
#include <QVector>

namespace Ui
{
class MainWindow;
}

// 직선 모델을 표현하는 구조체
struct LineModel
{
    double slope;     // 기울기
    double intercept; // 절편
};

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    QGraphicsScene *scene;       // QGraphicsScene 객체 추가
    QVector<QPointF> points;     // CSV 파일에서 불러온 좌표 데이터를 저장

    void drawAxes();                            // XY 축을 그리는 함수
    void loadCSVData(const QString &fileName); // CSV 데이터 로드 함수

    LineModel fitLineWithLeastSquares(const QVector<QPointF> &points); // 최소제곱법으로 직선 모델 계산
    void drawBestFitLine(const LineModel &model);                     // 최적 직선 모델을 그리는 함수
};

#endif // MAINWINDOW_H
