import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.0
import com.myself 1.0



Rectangle
{
    property int i: 0


    x:0;y:0;width: 560;height: 300
    visible: true

    Setting
    {
        id:setting
    }
    color:(setting.getDayMode())?"#899fd7":"black"


    Back
    {
        x: 50
        y: 15
    }
    Clock
    {
        y:-15
    }

    LabelStyle
    {
        x: 219
        y: 15
        head:"Camera"
    }
    LabelStyle
    {
        x: 50
        y: 83
        head:"Parking Guidance"
    }
    LabelStyle
    {
        x: 50
        y: 148
        head:"Hitch Guidance"
    }
    LabelStyle
    {
        x: 50
        y: 213
        head:"Zoom"
    }
    Rectangle
    {
        id:parkingon
        x: 220
        y: 83
        width: 150
        height: 50
        color:(setting.getParkingGuidence())?"grey":"lightblue"
        Text
        {
            x: 64
            y: 16
            width: 20
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "black"
            text:"On"
            font.pointSize: 12
            font.bold: true
        }
        radius: 2

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setting.setParkingGuidence(!setting.getParkingGuidence());
                parkingon.color=(setting.getParkingGuidence())?"grey":"lightblue";
                parkingoff.color=(setting.getParkingGuidence())?"lightblue":"grey";
            }
        }
   }

    Rectangle
    {
        id:hitchon
        x: 220
        y: 153
        width: 150
        height: 50
        color:(setting.getHitchGuidence())?"grey":"lightblue"
        Text
        {
            x: 64
            y: 16
            width: 20
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "black"
            text:"On"
            font.pointSize: 12
            font.bold: true
        }
        radius: 2

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setting.setHitchGuidence(!setting.getHitchGuidence());
                hitchon.color=(setting.getHitchGuidence())?"grey":"lightblue";
                hitchoff.color=(setting.getHitchGuidence())?"lightblue":"grey";
            }

        }
    }

    Rectangle
    {
        id:zoomon
        x: 220
        y: 222
        width: 150
        height: 50

         color:(setting.getZoom())?"grey":"lightblue"
         Text
            {
                x: 65
                y: 16
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "black"
            text:"on"
            font.pointSize: 12
            font.bold: true
            }

                radius: 2

    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            setting.setZoom(!setting.getZoom());
            zoomon.color=(setting.getZoom())?"grey":"lightblue";
            zoomoff.color=(setting.getZoom())?"lightblue":"grey";
        }
    }
}
    Rectangle
    {
        id: hitchoff
        x: 390
        y: 153
        width: 150
        height: 50
        Text
        {
            x: 63
            y: 16
            width: 22
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "black"
            text:"Off"
            font.pointSize: 12
            font.bold: true
        }
        color:(setting.getHitchGuidence())?"lightblue":"grey"
    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            setting.setHitchGuidence(!setting.getHitchGuidence());
            hitchoff.color=(setting.getHitchGuidence())?"lightblue":"grey";
            hitchon.color=(setting.getHitchGuidence())?"grey":"lightblue";
        }

    }
    }
    Rectangle
    {
        id:zoomoff
        x: 390
        y: 220
        width: 150
        height: 50
        color:(setting.getZoom())?"lightblue":"grey"
        Text
        {
            x: 64
            y: 17
            width: 22
            height: 17
        renderType: Text.NativeRendering
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: "black"
        text:"Off"
        font.pointSize: 12
        font.bold: true
        }
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setting.setZoom(!setting.getZoom());
                zoomoff.color=(setting.getZoom())?"lightblue":"grey";
                zoomon.color=(setting.getZoom())?"grey":"lightblue";
            }
        }
    }

    Rectangle
    {
        id:parkingoff
        x: 390
        y: 83
        width: 150
        height: 50
        color:(setting.getParkingGuidence())?"lightblue":"grey"
        Text
        {
            x: 63
            y: 16
            width: 22
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "black"
            text:"Off"
            font.pointSize: 12
            font.bold: true
        }

    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            setting.setParkingGuidence(!setting.getParkingGuidence());
            parkingoff.color=(setting.getParkingGuidence())?"lightblue":"grey";
            parkingon.color=(setting.getParkingGuidence())?"grey":"lightblue";
        }

    }
    }
}

