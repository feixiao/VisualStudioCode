import QtQuick 2.15
import QtQuick.Window 2.15

Window {
   width: 640
   height: 480
   visible: true
   color: "#09100f"
   title: qsTr("Hello World")

   Text {
      anchors.centerIn: parent
      font {
         pixelSize: 24
         bold: true
      }
      color: "white"
      text: "Hello from QtQuick"
   }
}