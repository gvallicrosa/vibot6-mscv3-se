#ifndef GUI_H
#define GUI_H

#include <cv.h>
#include <highgui.h>
#include <QMainWindow>
#include <Eigen/StdVector>
#include <vector>
#include "window_QT.h"

using namespace std;
using namespace Eigen;
using namespace cv;

namespace Ui {
    class Gui;
}

class Gui : public QMainWindow
{
    Q_OBJECT

public:
    explicit Gui(QWidget *parent = 0);
    ~Gui();

private slots:
    void updateImage( const Mat &img );
    void updateImage( const QString &str );

    void on_pushButton_LoadImage_clicked();
    void on_tableImage_currentCellChanged(int currentRow, int currentColumn, int previousRow, int previousColumn);

    void on_pushButton_Next_clicked();

    void on_pushButton_Prev_clicked();

    void on_pushButton_Process_clicked();

private:
    Ui::Gui *ui;
    CvWindow *cvWindow;

    int question( const QString & title );

    // rational_supershape_2d
    Mat rational_supershape_2d( const Mat &image, const vector< float > &rotOffsets );
    Mat drawPoints( const Mat &image, const vector<Vector2d> &data );
    vector<Vector2d> readImage_rational_supershape_2d( const Mat &image );
};

#endif // GUI_H