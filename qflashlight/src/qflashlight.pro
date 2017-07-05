QT += qml quick core gui multimedia multimediawidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

SOURCES += main.cpp \
    flashcontrol.cpp

RESOURCES += qml.qrc \
            images.qrc \
    script.qrc

TARGET = Qflashlight

QML_IMPORT_PATH =


QML_DESIGNER_IMPORT_PATH =

#
DEFINES += QT_DEPRECATED_WARNINGS

#include(deployment.pri)

HEADERS += \
    flashcontrol.h

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

