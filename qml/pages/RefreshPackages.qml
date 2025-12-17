import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property bool loading: false

    id: page
    allowedOrientations: defaultAllowedOrientations

    BusyLabel {
        text: qsTr("Refreshing cache...")
        running: loading
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        visible: !loading

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                id: pageTitle
                //: Title of a page
                title: qsTr("Refresh packages")
            }

            Label {
                id: mainText
                wrapMode: Text.WordWrap
                width: parent.width - (Theme.paddingLarge * 2)
                x: Theme.paddingLarge
                textFormat: Text.RichText

                text: qsTr("<p>Sometimes the various stores fight each other and can't decide what apps you have actually available. So if you can't install an app even though you should, a broken package cache is a likely culprit.</p><p>Using the button below you can force a full refresh to get them into a consistent state.</p>");
            }

            Button {
                text: qsTr("Refresh package cache")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    console.log('TODO');
                    loading = true;
                }
            }
        }
    }
}
