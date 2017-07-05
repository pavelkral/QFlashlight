import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.1
import org.demo 1.0
import "../script/script.js" as MyScript
import "concent"

ApplicationWindow {
    //id:window
    visible: true
    width: 360
    height: 640
    title: qsTr("QFlashlight")
    color: "#000000"
    signal turnOffFlash(string text)
    Material.theme: Material.Dark
    Material.accent: Material.Green
    header: ToolBar {
        background: Rectangle {
            color: "transparent"
        }
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("⋮")
                onClicked: menu.open()
                Menu {
                       id: menu
                       MenuItem {
                           text: "Exit"
                           onClicked: {
                               Qt.quit()
                           }
                       }

                   }
            }
        }
    }
    MessageBox{
        id:msgBox
        visible: false
    }

    Page{
        background: Rectangle {
            color: "#000000"
        }
        width: window.width
        height:640
        anchors.horizontalCenter: parent.horizontalCenter
        RowLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
                 Rectangle {
                    width: 360
                     height: 640
                     color: "#000000"
                         Rectangle {
                             color: "#000000"
                             height: 640
                             radius: 0
                             border.width: 0
                             border.color: "black"
                             gradient: Gradient {
                                 GradientStop { position: 0.0; color: "#000000" }
                                 GradientStop { position: 0.2; color: "#000000" }
                                 GradientStop { position: 0.4; color: "#000000" }
                                 GradientStop { position: 0.6; color: "#000000" }
                                 GradientStop { position: 0.8; color: "#000000" }
                                 GradientStop { position: 1.0; color: "#000000" }
                             }
                            Main{
                            }

                        }

                }
        }
    }

    function fromCpp(text){

        console.log("Received status: "+text)
        if(text == "Null"){
            msgBox.visible = true
        }
        else{
          //   msgBox.visible = true
        }
    }



}
