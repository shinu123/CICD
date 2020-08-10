import QtQuick 2.0

Rectangle
{
    id: rectangle4
    x: 41
    y: 35
    width: 110
    height: 59
    color: "#add8e6"
    //border.width: 2
    gradient: Gradient {
        GradientStop
        {
            position: 0
            color: "#899fd7"
        }

        GradientStop
        {
            position: 1
            color: "#add9e6"
        }
    }
    Text
    {
        color: "#000000"
        text: qsTr("Back")
        font.bold: true
        anchors.centerIn: parent
        font.pointSize: 11
    }
    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
        pageLoader.source="";
        pageLoader.source ="Homemenu.qml";
        }
    }
}
