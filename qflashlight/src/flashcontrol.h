#ifndef FLASHCONTROL_H
#define FLASHCONTROL_H

#include <QObject>
#include <QDebug>
#include <QCameraExposure>
#include <QCameraImageCapture>

class QCamera;
class QCameraViewfinder;

class FlashControl : public QObject
{
	Q_OBJECT
public:
	explicit FlashControl(QObject *parent = nullptr);
	Q_INVOKABLE bool lightOn(const QString &msg);

	QCameraExposure *camExpos;
	QCamera *mCamera;
	QCameraImageCapture *mCameraImageCapture;

signals:
	void sendMessageToQML(QVariant str);
public slots:
	void lightsOff(QString msg);

private:
};

#endif // FLASHCONTROL_H
