#include <QCoreApplication>

#include "../EtcTool/EtcSourceImage.h"

#include <QDebug>

int main(int argc, char *argv[])
{
  QCoreApplication a(argc, argv);

  const char* testPath = "/home/denzil/Desktop/Background.png";
  Etc::SourceImage image(testPath);

  qDebug() << QString(image.GetFileExtension());

  return a.exec();
}
