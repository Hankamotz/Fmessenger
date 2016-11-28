import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

            
    Page {
            
            id: aboutPage
            visible: false
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("About")
            StyleHints {
                foregroundColor: "#FFFFFF"
                backgroundColor: "#0084FF"

            }
            leadingActionBar {
                           numberOfSlots: 1
                           actions: [
                               Action {
                                   id: actionSettings
                                   iconName: "back"
                                   text: i18n.tr("Back")
                                   onTriggered: {
                                                           onClicked: mainPageStack.pop(aboutPage)
                                                       }
                               }
                           ]
                       }
        }

        UbuntuShape {
                                id: appImage
                                anchors{

                                    horizontalCenter: parent.horizontalCenter
                                    top: pageHeader.bottom
                                    topMargin: units.gu(6)
                            }
                                width: units.gu(15)
                                height: units.gu(15)
                                source: Image {
                                    source: Qt.resolvedUrl("fmessenger.png")
                                }



        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: appImage.bottom
                topMargin: units.gu(6)
            }
            id: label
            objectName: "label"
            text: i18n.tr("Fmessenger v.0.8.3")
            fontSize: "large"
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label.bottom
                topMargin: units.gu(3)
            }
            id: label1
            objectName: "label"
            text: i18n.tr("Unofficial Facebook Messenger client")
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label1.bottom
                topMargin: units.gu(3)
            }
            id: label2
            objectName: "label"
            text: i18n.tr("2016")
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label2.bottom
                topMargin: units.gu(3)
            }
            id: label3
            objectName: "label"
            text: i18n.tr("Andima Landaluze  <a href=\"mailto://andimalo@hotmail.es\">andimalo@hotmail.es</a>")
            fontSize: "small"
            onLinkActivated: Qt.openUrlExternally(link)

        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label3.bottom
                topMargin: units.gu(3)
            }
            id: label4
            objectName: "label"
            text: i18n.tr("This app uses")
            fontSize: "small"

        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label4.bottom
                topMargin: units.gu(1)
            }
            id: label5
            objectName: "label"
            text: i18n.tr("a modified version of Messenger style")
            fontSize: "small"

        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label5.bottom
                topMargin: units.gu(1)
            }
            id: label6
            objectName: "label"
            text: i18n.tr("made by <a href=\"https://userstyles.org/styles/112567/facebook-messanger-nice-tidy-and-more-responsive\">Krzychu</a> (CC-BY-NC-SA)")
            fontSize: "small"

        }

        }
    }



