import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    id: window1
    visible: true
    Image{
        anchors.fill: parent
        source:"../img/Background.png"
    }

    Image{
        id: carrot
        scale: 0.4
        rotation: -95
        anchors.verticalCenter: head.verticalCenter
        anchors.left: head.right
        anchors.leftMargin: -20
        source:"../img/carrot.png"
    }

    Image{
        id: hat
        z: 5
        sourceSize.width: 150
        anchors.horizontalCenter: head.horizontalCenter
        anchors.horizontalCenterOffset: -20
        anchors.bottom: head.top
        anchors.bottomMargin: -30
        source:"../img/hat.png"
        scale: 1
    }

    // Create instances of "SnowMan" here...
    Snowman{
        id:head
        color:"white"
        anchors.horizontalCenter: mid.horizontalCenter
        anchors.bottom: mid.top
        anchors.bottomMargin: -30
        width: 150
        height: 150
        radius: 75
        z: 4

    }

    Snowman{
        id:eye
        color:"black"
        anchors.horizontalCenter: head.horizontalCenter
        anchors.verticalCenter: head.verticalCenter
        anchors.verticalCenterOffset: -15
        anchors.horizontalCenterOffset: 30
        width: 15
        height: 15
        radius: 8.5
        z: 6

    }

    Snowman{
        id:mid
        //anchors.left: parent.left
        anchors.horizontalCenter: bot.horizontalCenter
        anchors.bottom: bot.top
        anchors.bottomMargin:  -30
        height: 200
        width: 200
        color: "white"
        //anchors.leftMargin: 150
        radius: 100
        z: 3
    }
    Snowman{
        id:bot
        anchors.left  : parent.left
        anchors.bottom : parent.bottom
        height: 250
        width: 250
        color: "white"
        anchors.leftMargin: 150
        anchors.bottomMargin: 100
        radius: 125
    }
}

