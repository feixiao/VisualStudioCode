#include <QCoreApplication>
#include <QDebug>

int main(int argc, char *argv[]) {
  QCoreApplication app(argc, argv);

  qDebug() << "Hello World from Qt Command Line!";

  return app.exec();
}