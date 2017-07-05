import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.1
import org.demo 1.0
import QtQuick.Dialogs 1.2

MessageDialog {
    id: messageDialog
    title: "Alert"
    text: "Mode Not Supported."
    icon: StandardIcon.Critical
//    detailedText: "To replace a file means that its existing contents will be lost. " +
//       "The file that you are copying now will be copied over it instead."
//    standardButtons: StandardButton.Yes | StandardButton.No
//    onYes: console.log("copied")
//    onNo: console.log("didn't copy")
//    onRejected: console.log("aborted")
    onAccepted: {
        console.log("And of course you could only agree.")
        Qt.quit()
    }
    Component.onCompleted: visible = false
}

//Item {

