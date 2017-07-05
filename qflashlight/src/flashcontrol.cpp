#include "flashcontrol.h"
#include <QCamera>
#include <QCameraViewfinder>
#include <QCameraImageCapture>

FlashControl::FlashControl(QObject *parent) : QObject(parent)
{

	mCamera = new QCamera(this);
	mCameraImageCapture = new QCameraImageCapture(mCamera, this);
	camExpos = mCamera->exposure();
	mCamera->load();

}

bool FlashControl::lightOn(const QString &msg)
{
	qDebug() << "Suported modes";
	qDebug() << "FlashTorch: " << camExpos->isFlashModeSupported(QCameraExposure::FlashTorch);
	qDebug() << "FlashVideo: " << camExpos->isFlashModeSupported(QCameraExposure::FlashVideoLight);
	qDebug() << "FlashOn: " << camExpos->isFlashModeSupported(QCameraExposure::FlashOn);
	QVariant f = "Emited : " + msg;

	if (camExpos->isFlashModeSupported(QCameraExposure::FlashTorch)) {
		camExpos->setFlashMode(QCameraExposure::FlashTorch);
		qDebug() << "flashMode:" << camExpos->flashMode();
	}
	else if (camExpos->isFlashModeSupported(QCameraExposure::FlashVideoLight)){
			camExpos->setFlashMode(QCameraExposure::FlashVideoLight);
			qDebug() << "flashMode:" << camExpos->flashMode();
	}
	else{
		qDebug() << "Flash modes not suporrted";
		f="Null";
	}

	mCamera->start();
	emit sendMessageToQML(f);
	return true;
}

void FlashControl::lightsOff(QString msg)
{
	camExpos->setFlashMode(QCameraExposure::FlashOff);
	qDebug() << "flashMode:" << camExpos->flashMode();
	mCamera->stop();
	QVariant f = "Emited : " + msg;
	emit sendMessageToQML(f);


}


