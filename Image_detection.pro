#-------------------------------------------------
#
# Project created by QtCreator 2016-04-21T10:27:10
#
#-------------------------------------------------

QT       += core gui
CONFIG +=c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Image_detection
TEMPLATE = app
SOURCES += main.cpp\
        mainwindow.cpp \
    image_detection.cpp \
    nms.cpp \
    dockwidget.cpp \
    detector_warpper.cpp

HEADERS  += mainwindow.h \
        image_detection.h \
    nms.h \
    dockwidget.h \
    detector_warpper.h

FORMS    += mainwindow.ui \
    dockwidget.ui

INCLUDEPATH += /home/vcc/caffe_depen/caffe-fast-rcnn/include \
               /usr/include/opencv /usr/include/opencv2 \



LIBS += -L/home/vcc/caffe_depen/lib -lcaffe -lcblas -latlas

LIBS+= -L/usr/local/lib  -lglog -lgflags -lprotobuf -lleveldb -lsnappy -llmdb -lboost_system -lhdf5_hl -lhdf5 -lm -lopencv_core -lopencv_highgui -lopencv_imgproc -lboost_thread -lstdc++  -lprotobuf
INCLUDEPATH +=/usr/include/python2.7/
INCLUDEPATH +=/usr/include/
LIBS += -lboost_python -lpython2.7 -lboost_system
