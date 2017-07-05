#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QVariant>
#include <QQmlContext>
#include "flashcontrol.h"

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication app(argc, argv);
	FlashControl *flash = new FlashControl();
	qmlRegisterType<FlashControl>("org.demo", 1, 0, "FlashControl");
	QQmlApplicationEngine engine;

	engine.load(QUrl(QLatin1String("qrc:/qml/main.qml")));
	engine.rootContext()->setContextProperty("fl", flash);
	//engine.rootContext()->setContextProperty("_myClass", &myClass);
	QObject *topLevel = engine.rootObjects().value(0);
	QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel);

	QObject::connect(window, SIGNAL(turnOffFlash(QString)),
							 flash, SLOT(lightsOff(QString)));

	QObject::connect(flash, SIGNAL(sendMessageToQML(QVariant)),
							 window, SLOT(fromCpp(QVariant)));
	return app.exec();
}
