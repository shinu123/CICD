import QtQuick 2.0

Rectangle
{
    x:0;y:0;width: 560;height: 300
    gradient: Gradient
    {
        GradientStop{position: 0.0;color: "#899fd7"}
        GradientStop{position: 1.0;color: "#add9e6"}
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
        head:"Error Message"
    }
    Clock
    {
    }
    LabelStyle
    {
        x: 43
        y: 148
        width: 495
        height: 59
        head:"Error String"
    }
}
