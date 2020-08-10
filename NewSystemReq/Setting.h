#ifndef Setting_H
#define Setting_H

#include <QObject>
#include <QFile>
#include <QDebug>
#include <QString>

class Setting : public QObject
{
    Q_OBJECT
public:
    explicit Setting(QObject *parent = 0): QObject(parent) {}

    // Function for setting ParkingGuidence value into the file
    Q_INVOKABLE void setParkingGuidence(int nParking)
    {
        QFile fileInp("C:/Qt/Parking.txt");
        if (!fileInp.exists())
            qDebug()<<"Parking File not Exists";

        if (!fileInp.open(QIODevice::WriteOnly))
            return;
        // Writing ParkingGuidence value into the file
        QTextStream out(&fileInp);
        out<<nParking;
        return;
    }

    // Function for reading ParkingGuidence value from the file
    Q_INVOKABLE int getParkingGuidence()
    {
        int nParking;
        QFile fileOut("C:/Qt/Parking.txt");
        if ( !fileOut.exists() )
             qDebug()<<"Parking File not Exists";
        if (!fileOut.open(QIODevice::ReadOnly | QIODevice::Text))
            return 0;
        QString line;
        // Reading from file.
        while(!fileOut.atEnd())
        {
            line = fileOut.readLine();
        }
        nParking=line.toInt();
        return nParking;
    }

    // Function for setting HitchGuidence value into the file
    Q_INVOKABLE void setHitchGuidence(int nHitch)
    {
        QFile fileInpHitch("C:/Qt/Hitch.txt");
        if (!fileInpHitch.exists())
            qDebug()<<"Hitch File not Exists";

        if (!fileInpHitch.open(QIODevice::WriteOnly))
            return;
        QTextStream out(&fileInpHitch);
        out<<nHitch;
        return;
    }

    // Function for reading HitchGuidence value from the file
    Q_INVOKABLE int getHitchGuidence()
    {
        int nHitch;
        QFile fileOut("C:/Qt/Hitch.txt");
        if (!fileOut.exists())
            qDebug()<<"Hitch File not Exists";
        if (!fileOut.open(QIODevice::ReadOnly | QIODevice::Text))
            return 0;
        QString line;
        while (!fileOut.atEnd())
        {
            line = fileOut.readLine();
        }
        nHitch=line.toInt();
        return nHitch;
    }

    // Function for  setting zoom value into the file
    Q_INVOKABLE void setZoom(int nZoom)
    {
        QFile fileInpZoom("C:/Qt/Zoom.txt");
        if (!fileInpZoom.exists())
            qDebug()<<"File zoom not Exists";

        if (!fileInpZoom.open(QIODevice::WriteOnly))
            return;
        QTextStream out(&fileInpZoom);
        out<<nZoom;
        return;
    }

    // Function for reading zoom value from the file
    Q_INVOKABLE int getZoom()
    {
        int nZoom;
        QFile fileOut("C:/Qt/Zoom.txt");
        if(!fileOut.exists())
             qDebug()<<"File zoom not Exists";

        if (!fileOut.open(QIODevice::ReadOnly | QIODevice::Text))
            return 0;
        QString line;
        while (!fileOut.atEnd())
        {
            line = fileOut.readLine();
        }
        nZoom=line.toInt();
        return nZoom;
    }
    // For setting mode
    Q_INVOKABLE void setDayMode(int mode)
    {
        QFile fileInp("C:/Qt/Daymode.txt");
        if (!fileInp.exists())
            qDebug()<<"Daymode File not Exists";

        if (!fileInp.open(QIODevice::WriteOnly))
            return;
        QTextStream out(&fileInp);
        out<<mode;
       // qDebug()<<mode;
    }

    // For getting mode
    Q_INVOKABLE int getDayMode()
    {
        int nMode;
        QFile fileOut("C:/Qt/Daymode.txt");
        if (!fileOut.exists() )
            qDebug()<<"Daymode File not Exists";
        if (!fileOut.open(QIODevice::ReadOnly | QIODevice::Text))
            return 0;
        QString line;
        while (!fileOut.atEnd())
        {
            line = fileOut.readLine();
            //qDebug()<<line;
        }
        nMode = line.toInt();
        return nMode;
    }

    Q_INVOKABLE void setPlaceName(QString Place)
    {
        QFile fileInp("C:/Qt/PlaceName.txt");

        if (!fileInp.exists())
            qDebug()<<"File placename not Exists";
        if (!fileInp.open(QIODevice::WriteOnly ))
            return;
        QTextStream out(&fileInp);
        out<<Place;
    }

    Q_INVOKABLE QString getPlaceName()
    {
        QFile fileOut("C:/Qt/PlaceName.txt");

        if (!fileOut.exists())
            qDebug()<<"File place name not Exists";
        if (!fileOut.open(QIODevice::ReadOnly | QIODevice::Text))
            return 0;
        QString line;
        while (!fileOut.atEnd())
        {
            line = fileOut.readLine();
        }
        return line;
    }


signals:

public slots:

};

#endif // Setting_H
