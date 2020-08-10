#include <QApplication>
#include <QQmlApplicationEngine>
#include "Setting.h"
#include<QtQml>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    // Defining QML Types from C++
    qmlRegisterType<Setting>("com.myself", 1, 0, "Setting");

    // Loading QML file
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
