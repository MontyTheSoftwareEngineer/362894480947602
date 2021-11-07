import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    height: 640
    width: 1386
    title: qsTr("Hello World")

    Rectangle {
        id: mainBackground
        color: "#dbdbdb"
        anchors.fill: parent
    }

    Rectangle {
        id: lowerHalfGuide
        width: parent.width
        height: parent.height / 2
        color: "#dbdbdb"
        anchors {
            bottom: parent.bottom
            left: parent.left
        }
    }

    Rectangle {
        id: curvyEdge
        width: parent.width * 2
        height: width
        radius: width / 2
        color: "#8c52fe"

        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: lowerHalfGuide.top
        }
    }

    Text {
        id: curvyText
        text: qsTr("curvy background")
        anchors {
            top: parent.top
            topMargin: 40
            horizontalCenter: parent.horizontalCenter
        }
        color: "white"
        font.pixelSize: 72
        font.bold: true
    }
}
