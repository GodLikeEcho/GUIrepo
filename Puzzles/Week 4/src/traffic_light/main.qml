import QtQuick 2.4
import QtQuick.Controls 1.2
import Qt.labs.settings 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Traffic Light")

    property int index: 0

    Rectangle
    {
        id: big_wrapper
        anchors.fill: parent

        Settings{
//            //property alias tr: top.running
            property alias tc: rect_red_light.color

//            //property alias mr: mid.running
            property alias mc: rect_yellow_light.color

//            //property alias br: bot.running
            property alias bc: rect_green_light.color
        }

        Timer {

            id: top; interval: 2000; running: true; repeat: false
            onTriggered: {
                rect_red_light.color = "red"
                rect_yellow_light.color = "black"
                bot.start()
            }
        }
        Timer {
            id: mid; interval: 2000; running: false; repeat: false
            onTriggered: {
                rect_yellow_light.color = "yellow"
                rect_green_light.color = "black"
                top.start()
            }
        }
        Timer {
            id: bot; interval: 2000; running: false; repeat: false
            onTriggered: {
                rect_green_light.color = "green"
                rect_red_light.color = "black"
                mid.start()
            }
        }


        Rectangle
        {
            id: rect_traffic_light_head
            anchors.horizontalCenter: big_wrapper.horizontalCenter
            anchors.verticalCenter: big_wrapper.verticalCenter

            height: parent.height * .9;
            width: parent.width/3;
            border.color: "brown"

            //transform: Scale{xScale: .3; yScale: .3}
        }
        Rectangle
        {
            id: rect_red_light
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            height: 100;
            width: 100;
            radius: width/2;
            border.width: 10
            border.color: "black"
            color: "red"

        }


        Rectangle
        {
            id: rect_yellow_light
            anchors.top: rect_red_light.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            height: 100;
            width: 100;
            radius: width/2;
            border.width: 10
            border.color: "black"
            color: "black"
        }

        Rectangle
        {
            id: rect_green_light
            anchors.top: rect_yellow_light.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            height: 100;
            width: 100;
            radius: width/2;
            border.color: "black"
            border.width: 10
            color: "black"
        }
    }

}

