import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2
import com.canonical.Oxide 1.0 as Oxide



MainView {

    objectName: "mainView"


    applicationName: "fmessenger.hankamotz"

    automaticOrientation: true
    width: units.gu(100)
    height: units.gu(75)

    anchorToKeyboard: true

    PageStack {
                  id: mainPageStack
                  Component.onCompleted: push(pageMain)
                  anchors.fill: parent
                         width: parent.width

    Page {
        id: pageMain
        visible: false

        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Fmessenger")
            StyleHints {
                    foregroundColor: "#FFFFFF"
                    backgroundColor: "#0084FF"
                    dividerColor: "transparent"

            }
            leadingActionBar {
                           numberOfSlots:1
                           actions: [
                               Action {
                                   id: actionAbout
                                   iconName: "info"
                                   text: i18n.tr("About")
                                   onTriggered:  mainPageStack.push(Qt.resolvedUrl("About.qml"))
                                    },
                               Action {
                                   id: actionRate
                                   iconName: "thumb-up"
                                   text: i18n.tr("Rate this App")
                                   onTriggered: {
                                   Qt.openUrlExternally("scope://com.canonical.scopes.clickstore?q=fmessenger.hankamotz")
                                         }
                                    }
                           ]

                       }

           Label {
               id: selectLabel
               anchors{

                   horizontalCenter: parent.horizontalCenter
                   top: pageHeader.bottom
                   topMargin: units.gu(4)
           }
               objectName: "label"
               text: i18n.tr("Select your device")
               fontSize: "large"
               }

            Button {
                                    id: phoneImage
                                    anchors{

                                        horizontalCenter: parent.horizontalCenter
                                        top: selectLabel.bottom
                                        topMargin: units.gu(3)
                                }
                                    width: units.gu(8)
                                    height: units.gu(8)
                                    color: "#FFFFFF"
                                    iconName: "phone-smartphone-symbolic"
                                    onTriggered:  mainPageStack.push(Qt.resolvedUrl("Phone.qml"))
                                          }

            Label {
                id: phoneLabel
                anchors{

                    horizontalCenter: parent.horizontalCenter
                    top: phoneImage.bottom
                    topMargin: units.gu(1)
            }
                objectName: "label"
                text: i18n.tr("Phone")

                }
            Button {
                                    id: tabletImage
                                    anchors{

                                        horizontalCenter: parent.horizontalCenter
                                        top: phoneLabel.bottom
                                        topMargin: units.gu(3)
                                }
                                    width: units.gu(8)
                                    height: units.gu(8)
                                    color: "#FFFFFF"
                                    iconName: "tablet-symbolic"
                                    onTriggered:  mainPageStack.push(Qt.resolvedUrl("Tablet.qml"))
                                          }
            Label {
                id: tabletLabel
                anchors{

                    horizontalCenter: parent.horizontalCenter
                    top: tabletImage.bottom
                    topMargin: units.gu(1)
            }
                objectName: "label"
                text: i18n.tr("Tablet")

                }
            Button {
                                    id: desktopImage
                                    anchors{

                                        horizontalCenter: parent.horizontalCenter
                                        top: tabletLabel.bottom
                                        topMargin: units.gu(3)
                                }
                                    width: units.gu(8)
                                    height: units.gu(8)
                                    color: "#FFFFFF"
                                    iconName: "computer-symbolic"
                                    onTriggered:  mainPageStack.push(Qt.resolvedUrl("Desktop.qml"))
                                          }
            Label {
                id: desktopLabel
                anchors{

                    horizontalCenter: parent.horizontalCenter
                    top: desktopImage.bottom
                    topMargin: units.gu(1)
            }
                objectName: "label"
                text: i18n.tr("Desktop")

                }

                                       }


                                      }

                                   }
 }
