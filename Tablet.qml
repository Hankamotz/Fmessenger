import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2
import com.canonical.Oxide 1.0 as Oxide



    Page {
        id: pageTablet
        visible: false

        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Fmessenger")
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
                                                           onClicked: mainPageStack.pop(pageTablet)
                                                       }
                               }
                           ]
                       }
            trailingActionBar {
                           numberOfSlots: 1
                           actions: [
                               Action {
                                   id: actionTabletone
                                   iconName: "tablet-symbolic"
                                   text: i18n.tr("Tablet view")
                                  onTriggered:  webview.reload()
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
                                url: Qt.resolvedUrl("./userscripts/tablet.js")
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
