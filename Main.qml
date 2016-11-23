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

            }
            leadingActionBar {
                           numberOfSlots:3
                           actions: [

                               Action {
                                   id: actionForward
                                   iconName: "go-next"
                                   text: i18n.tr("Forward")
                                   onTriggered:  {
                                       webview.goForward()
                                   }
                                    },

                                  Action {
                                   id: actionRestore
                                   iconSource: "icon.svg"
                                                       iconName: "icon"
                                                       onTriggered: {
                                                           webview.url = 'https://www.messenger.com/'
                                                       }
                                                       text: qsTr("Messenger")
                                                   },
                                   Action {
                                       id: actionBack
                                       iconName: "go-previous"
                                       text: i18n.tr("Back")
                                       onTriggered: {
                                           webview.goBack()
                                       }
                                   }
                           ]
                       }

            trailingActionBar {
                                                  numberOfSlots: 3
                                                  actions: [
                                                      Action {
                                                          id: actionfacebook
                                                          iconName: "facebook-symbolic"
                                                          onTriggered: {
                                                                                 webview.url = 'https://www.facebook.com/'
                                                                             }
                                                           },
                                                      Action {
                                                          id: actionPhoneone
                                                          iconName: "phone-smartphone-symbolic"
                                                          text: i18n.tr("Phone view")

                                                           },
                                                      Action {
                                                          id: actionTablet
                                                          iconName: "tablet-symbolic"
                                                          text: i18n.tr("Tablet view")
                                                          onTriggered:  mainPageStack.push(Qt.resolvedUrl("Tablet.qml"))
                                                           },
                                                      Action {
                                                          id: actionDesktop
                                                          iconName: "computer-symbolic"
                                                          text: i18n.tr("Desktop view")
                                                          onTriggered:  mainPageStack.push(Qt.resolvedUrl("Desktop.qml"))
                                                           },
                                                      Action {
                                                          id: actionAbout
                                                          iconName: "info"
                                                          text: i18n.tr("About")
                                                          onTriggered:  mainPageStack.push(Qt.resolvedUrl("About.qml"))
                                                           }



                                                  ]
                                              }
        }

        WebContext {
                    id: webcontext
                    userAgent: myUA
                    userScripts: [
                            Oxide.UserScript {
                                context: "oxide://"
                                url: Qt.resolvedUrl("./userscripts/phone.js")
                                matchAllFrames: true
                            }
                        ]
                    }

        WebView {


                    id: webview
                    anchors {
                        fill: parent
                        bottom: parent.bottom
                        top: pageHeader.bottom
                        topMargin: units.gu(6)

                    }



                    context: webcontext
                    url: "https://www.messenger.com/login.php"
                    preferences.localStorageEnabled: true
                    preferences.allowFileAccessFromFileUrls: true
                    preferences.allowUniversalAccessFromFileUrls: true
                    preferences.appCacheEnabled: true
                    preferences.javascriptCanAccessClipboard: true
                    filePicker: filePickerLoader.item


        }


    }

   }
}
