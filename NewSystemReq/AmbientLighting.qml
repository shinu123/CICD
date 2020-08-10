import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.2
import com.myself 1.0

Rectangle
{
    id:rect
    x:0;y:0;width: 560;height: 300
    //Based on the daymode setting the Rectangle color
    color:(setting.getDayMode())?"#899fd7":"black"
    Setting
    {
        id: setting
    }
    Back
    {
        x: 43
        y: 30
    }
    LabelStyle
    {
        x: 214
        y: 30
        head:"Ambient Lighting"
    }
    Clock
    {
    }

    Button
    {
        x: 43
        y: 164
        width: 120
        height: 50
        Buttonstyles
        {
            width: 120
            labelname: "Night Mode"
        }
        MouseArea
        {
            id: mouseArea
            anchors.fill: parent
            onClicked:
            {
                setting.setDayMode(0);
                rect.color=(setting.getDayMode())?"#899fd7":"black"
            }
        }
    }

    Button
    {
        x: 356
        y: 164
        width: 120
        height: 50
        Buttonstyles
        {
            width: 120
            labelname: "Day Mode"
        }
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setting.setDayMode(1);
                rect.color=(setting.getDayMode())?"#899fd7":"black"
            }
        }
    }
}
