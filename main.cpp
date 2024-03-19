#include <QGuiApplication>
#include <QQmlApplicationEngine>

// Oliv Qt
#include <Qaterial/Qaterial.hpp>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Load Qaterial
    qaterial::loadQmlResources();
    qaterial::registerQmlTypes();

    QQmlApplicationEngine engine;

    // engine.addImportPath(":/qt/qml");
    // engine.addImportPath(":/qt/qml/Acceptit");

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.loadFromModule("Acceptit", "Main");

    return app.exec();
}
