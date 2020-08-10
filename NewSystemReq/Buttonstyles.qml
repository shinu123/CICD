import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.2

Button
{
    width: 100
    height: 50
    property string labelname
    style: ButtonStyle
    {
     background: Rectangle
     {
        implicitWidth: 100
        implicitHeight: 25
        border.width: control.activeFocus ? 2 : 1
        border.color: "#888"
        radius: 4
        gradient: Gradient
        {
        GradientStop { position: 0 ; color: control.pressed ? "#627bbc" : "#add9e6" }
        GradientStop { position: 1 ; color: control.pressed ? "#add9e6" : "#627bbc" }
        }
      }
    label : Rectangle
    {
        gradient: Gradient
        {
            GradientStop{position: 0 ; color: control.pressed ? "#627bbc" : "#add9e6"}
            GradientStop{position: 1 ; color: control.pressed ? "#add9e6" : "#627bbc"}
        }
        Text
        {
            color: "black"
            anchors.centerIn: parent
            font.pointSize: 9.5
            font.bold: true
            text: labelname
        }
    }
    }
}
