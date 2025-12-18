import QtQuick 2.0
import Sailfish.Silica 1.0

BackgroundItem {
    property alias text: label.text
    property alias textAlignment: label.horizontalAlignment
    property int depth: 0
    readonly property color _color: enabled ? highlighted ? Theme.highlightColor : Theme.primaryColor : Theme.secondaryColor

    height: Theme.itemSizeMedium

    Label {
        id: label
        anchors {
            left: parent.left
            right: image.left
            verticalCenter: parent.verticalCenter
            leftMargin: Theme.horizontalPageMargin + depth * Theme.paddingLarge
            rightMargin: Theme.paddingMedium
        }
        horizontalAlignment: Text.AlignRight
        truncationMode: TruncationMode.Fade
        color: _color
    }

    Image {
        id: image
        anchors {
            right: parent.right
            verticalCenter: parent.verticalCenter
            rightMargin: Theme.horizontalPageMargin
        }
        source: "image://theme/icon-m-right?" + _color
    }

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: Theme.rgba(Theme.highlightBackgroundColor, 0.15) }
            GradientStop { position: 1.0; color: "transparent" }
        }
    }
}
