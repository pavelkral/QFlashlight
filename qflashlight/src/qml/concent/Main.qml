import QtQuick 2.7
import org.demo 1.0

MainForm {
    id:form

    btlighton.onClicked: {

        fl.lightOn("On")
        flimage.source = "qrc:/images/led.png"
    }
    btlightoff.onClicked: {

        turnOffFlash("Off")
        flimage.source = "qrc:/images/led2.png"
    }
    btexit.onClicked: {

        Qt.quit()
        //turnOffFlash("Off")
    }


}
