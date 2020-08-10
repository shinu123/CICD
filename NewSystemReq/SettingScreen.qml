import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import com.myself 1.0

Rectangle
{
    x:0;y:0;width: 560;height: 300
    Setting
    {
        id:setting
    }
    color:(setting.getDayMode())?"#899fd7":"add9e6"
    Back
    {
        x: 43
        y: 30
    }
    LabelStyle
    {
        x: 214
        y: 30
        head:"Setting"
    }
    Clock
    {
    }

    LabelStyle
    {
        x: 43
        y: 141
        head:"Place Name"
    }

    ComboBox
    {
        id: comboBox1
        x: 252
        y: 155
        width: 155
        height: 31
        model: [ "Bangalore", "Delhi", "Mumbai","Chennai","Kolkatta" ]

        /*style: ComboBoxStyle
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
               GradientStop{ position: 0; color: control.pressed ? "#627bbc" : "#add9e6" }
               GradientStop{ position: 1; color: control.pressed ? "#add9e6" : "#627bbc" }
               }
             }
        }*/
        onCurrentIndexChanged:
        {
            setting.setPlaceName(comboBox1.currentText);
        }
    }
}
