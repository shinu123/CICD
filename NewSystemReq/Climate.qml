import QtQuick 2.0
import com.myself 1.0

Rectangle
{
    x:0;y:0;width: 560;height: 300
    color:(setting.getDayMode())?"#899fd7":"black"
    Setting
    {
        id:setting
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
        head:"Climate"
    }
    Clock
    {
    }

    LabelStyle
    {
        x: 43
        y: 108
        width: 495
        height: 59
        head:setting.getPlaceName() + "\t"+ new Date().getHours()+ ":" + new Date().getMinutes() +"\t"+Qt.formatDateTime(new Date(), "dd.MM.yyyy")
    }
    LabelStyle
    {
        x: 43
        y: 203
        head:"25 degree Celsius "
    }
    LabelStyle
    {
        x: 219
        y: 203
        head:"23 degree Celsius "
    }

    LabelStyle
    {
        x: 390
        y: 203
        head: " 19 degree Celsius "
    }
}
