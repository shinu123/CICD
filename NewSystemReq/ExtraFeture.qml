import QtQuick 2.2
import QtQuick.Controls 1.1
//import QtQuick.Controls.Styles 1.2
import com.myself 1.0
Rectangle
{
    width: 560
    height: 300
    visible: true
    Setting
    {
        id: setting
    }
    color:(setting.getDayMode())?"#899fd7":"black"

    LabelStyle
    {
        x: 209
        y: 35
        head:"Extra features"
    }

    Clock
    {

    }

    Back
    {

    }

    Row
    {
        x: 93
        y: 171
        spacing: 30

        Button
        {
            x: 95
            width: 120
            height: 50
            Buttonstyles
            {
                width: 120
                labelname: "Ambient lighting"
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    pageLoader.source=""
                    pageLoader.source ="AmbientLighting.qml"
                }
            }
        }
        Button
        {
            x:200
            width: 100
            height: 50
            Buttonstyles
            {
                labelname: "Camera"
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    pageLoader.source=""
                    pageLoader.source ="Camera.qml"
                }
            }
        }
        Button
        {
            x:335
            width: 100
            height: 50
            Buttonstyles
            {
                x: 0
                y: 0
                labelname: "Climate"
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                pageLoader.source= "";
                pageLoader.source= "Climate.qml";
                }
            }
        }
    }
}
