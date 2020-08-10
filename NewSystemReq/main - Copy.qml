import QtQuick 2.2
import QtQuick.Controls 1.1


ApplicationWindow
{
    id:appwindow
    visible: true
    width: 560
    height: 300
    title: qsTr("New System Requirement")
    Item
    {
        width: 560; height: 300

        Loader { id: pageLoader ;width: 560 ;height: 300 }

        MouseArea
        {
            anchors.fill: parent
            onClicked: pageLoader.source = "Homemenu.qml"
        }
    }

 }
