#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <memory>
#include <QGraphicsScene>
#include "dockwidget.h"

class image_detection;
namespace Ui {
class MainWindow;

}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    virtual ~MainWindow();

private:
    Ui::MainWindow *ui;
    std::shared_ptr<image_detection> detector;
    QPixmap image;
    std::shared_ptr<QImage> imageObject;
    std::shared_ptr<QGraphicsScene> scene;
    DockWidget* dock_object;
    std::string imagePath;
    float score_threshlod;
    float nms_threshold;
    std::vector<std::vector<float>> det_ret;
    std::shared_ptr<std::vector<std::string>> cls_inx_name;
public slots:
    void LoadImgClicked();
    void reset_score_threshold(double new_threshlod);
    void reset_nms_threshold(double new_threshold);
    void detect();
    void show_detected();
signals:
    void detection_finshed();
};

#endif // MAINWINDOW_H