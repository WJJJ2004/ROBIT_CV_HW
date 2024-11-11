#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QVector>
#include <QPointF>
#include <QPixmap>  // QPixmap 포함

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

protected:
    void paintEvent(QPaintEvent *event) override;

private:
    Ui::MainWindow *ui;
    QVector<QPointF> points;    // CSV 파일에서 불러온 좌표 데이터를 저장
    QPixmap axesPixmap;         // XY 축을 그릴 Pixmap 변수

    void loadCSVData(const QString &fileName); // CSV 데이터 로드 함수
    void drawAxes();                            // XY 축을 그리는 함수
};

#endif // MAINWINDOW_H
