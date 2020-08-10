
import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.2
import com.myself 1.0
Rectangle
{
    x:0;y:0;width: 560;height: 300
    /*gradient: Gradient
    {
        GradientStop{position: 0.0;color: "#899fd7"}
        GradientStop{position: 1.0;color: "#add9e6"}
    }*/
    color:(setting.getDayMode())?"#899fd7":"black"

    Setting
    {
       id: setting
    }
    LabelStyle
    {
        head: "Home menu"
    }
    Row
    {
        x: 95
        y: 162
        width: 315
        spacing: 35

        Button
        {
            x: 95
            width: 100
            height: 50
            Buttonstyles
            {
                x: 0
                y: 0
                labelname: "Settings"
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                   // pageLoader.source=""
                    pageLoader.source ="SettingScreen.qml"
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
                x: 0
                y: 0
                labelname: "Extra features"
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    pageLoader.source=""
                    pageLoader.source ="ExtraFeture.qml"
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
                labelname: "Exit"
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:close()
            }
        }
    }
    //Displays current time and date
    Clock
    {

    }
}

