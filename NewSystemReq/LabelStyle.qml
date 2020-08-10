import QtQuick 2.0

    Rectangle
    {
        property string head
        x: 209
        y: 35
        width: 143
        height: 59
        color: "lightblue"
        //border.width: 2
        gradient: Gradient
        {
        GradientStop{position: 0.0;color: "#899fd7"}
        GradientStop{position: 1.0;color: "#add9e6"}
        }
        Text
        {
            id:text
            color: "black"
            text: head
            font.pointSize: 11
            font.bold: true
            anchors.centerIn: parent
        }

    }
