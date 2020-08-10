import QtQuick 2.0
Item
{
    LabelStyle
    {
        id:label
        x: 396
        y: 35
        width: 131
        height: 59
    }
    Timer
    {
        property string hour: new Date().getHours()
        property string minute: new Date().getMinutes()
        interval: 500; running: true; repeat: true
        onTriggered: label.head = hour + ":" + minute + ":" +
                    new Date().getSeconds()+"\n"+Qt.formatDateTime(new Date(), "dd.MM.yyyy")
    }
}
