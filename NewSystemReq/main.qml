import QtQuick 2.2
import QtQuick.Controls 1.1


ApplicationWindow
{
    id:appwindow
    visible: true
    width: 560
    height: 300
    title: qsTr("New System Requirement")

    Loader
    {
        id: pageLoader
        source: "Homemenu.qml"
    }

}
