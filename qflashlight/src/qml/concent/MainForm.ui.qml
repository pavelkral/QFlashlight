import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
//import QtQuick.Controls.Material 2.1

Item {
    id: item1
    property alias btlightoff:btlightoff
    property alias btlighton: btlighton
    property alias btexit: btexit
    property alias flimage: flimage
    width: 360
    height: 640
    //    anchors.verticalCenter: parent.verticalCenter
    property alias rowLayout: rowLayout

    RowLayout {
        anchors.top: parent.top
        anchors.topMargin: 35
        anchors.horizontalCenter: parent.horizontalCenter

        /// anchors.topMargin: 20
        //  anchors.top: parent.top

        Image {
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            id: flimage
            width: 100
            height: 100
            source: "../../images/led2.png"
        }
    }
    RowLayout {
        id: rowLayout
        y: 309
        width: 202
        height: 48
        anchors.top: parent.top
        anchors.topMargin: 294
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: btlighton
        x: 80
        y: 294
        width: 98
        height: 48
        text: qsTr("On")

    }

    Button {
        id: btexit
        x: 80
        y: 355

        width: 205

        text: qsTr("Exit")
    }

    Button {
        id: btlightoff
        x: 187
        y: 294
        width: 98
        height: 48

        //   highlighted: true
        //   Material.accent: Material.Orange
        text: qsTr("Off")
    }



}
