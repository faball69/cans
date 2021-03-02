import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window
    flags: Qt.Window | Qt.FramelessWindowHint


    /*Canvas {
        id: canvas
        anchors.fill: parent
        antialiasing: true

        onPaint: {
            var context = canvas.getContext("2d")
            context.clearRect(0, 0, width, height)
            context.strokeStyle = "black"
            context.path = path
            context.stroke()
        }
    }*/
    ParallelAnimation {
        running: true
        loops: -1
        animations: [seq1, seq2, seq3, seq4, seq5, seq6, seq7, seq8]
    }
    SequentialAnimation {
        id: seq1
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can1
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    SequentialAnimation {
        id: seq2
        PauseAnimation{duration: 300}
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can2
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    SequentialAnimation {
        id: seq3
        PauseAnimation{duration: 600}
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can3
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    SequentialAnimation {
        id: seq4
        PauseAnimation{duration: 900}
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can4
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    SequentialAnimation {
        id: seq5
        PauseAnimation{duration: 1200}
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can5
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    SequentialAnimation {
        id: seq6
        PauseAnimation{duration: 1500}
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can6
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    SequentialAnimation {
        id: seq7
        PauseAnimation{duration: 1800}
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can7
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    SequentialAnimation {
        id: seq8
        PauseAnimation{duration: 2100}
        PathAnimation {
            duration: 3000
            easing.type: Easing.InOutCubic
            target: can8
            orientation: PathAnimation.RightFirst
            anchorPoint: Qt.point(25, 25)
            path: path
        }
    }
    Component {
        id: reusableCan
        Rectangle {
            id: rect
            property alias innerText: innerText.text
            width: 50; height: 50
            radius: 25
            color: "lightgray"
            RotationAnimator on rotation {
                from: 0;
                to: 360;
                duration: 700
                running: true
                loops: -1
            }
            border.width: 1
            antialiasing: true
            Text {
                id: innerText
                anchors.centerIn: parent
                text: "..."
            }
        }
    }

    Loader {
        id: can1
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "1"
        }
    }
    Loader {
        id: can2
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "2"
        }
    }
    Loader {
        id: can3
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "3"
        }
    }
    Loader {
        id: can4
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "4"
        }
    }
    Loader {
        id: can5
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "5"
        }
    }
    Loader {
        id: can6
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "6"
        }
    }
    Loader {
        id: can7
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "7"
        }
    }
    Loader {
        id: can8
        x:25; y:25
        sourceComponent: reusableCan
        onLoaded: {
            item.innerText = "8"
        }
    }

    Rectangle {
        width: 80
        height: 80
        visible: true
        color: "#000000"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 10
        anchors.topMargin: 10

        MouseArea {
            anchors.fill: parent
            DragHandler {
                target: null
                onActiveChanged: if (active){ window.startSystemMove() }
            }
        }

        Text {
            id: text1
            color: "#ffffff"
            text: "DragMe"
            anchors.fill: parent
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            textFormat: Text.RichText
        }
    }
    Rectangle {
        width: 80
        height: 80
        visible: true
        color: "#000000"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.rightMargin: 10

        MouseArea {
            anchors.fill: parent
            onClicked: window.close()
        }

        Text {
            id: text2
            color: "#ffffff"
            text: "click To Exit"
            anchors.fill: parent
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.weight: Font.Bold
            textFormat: Text.RichText
        }
    }
    Canvas {
        id: canvas2
        anchors.fill: parent
        antialiasing: true
        onPaint: {
            var context = canvas2.getContext("2d")
            context.clearRect(0, 0, width, height)
            context.strokeStyle = "black"
            context.path = path2
            context.stroke()
        }
    }
    Path {
        id: path2
        startX: 25; startY: 75
        PathCubic {
            x: window.width - 75
            y: window.height - 25
            control1X: x; control1Y: 75
            control2X: 25; control2Y: y
        }
        onChanged: canvas2.requestPaint()
    }
    Canvas {
        id: canvas3
        anchors.fill: parent
        antialiasing: true
        onPaint: {
            var context = canvas3.getContext("2d")
            context.clearRect(0, 0, width, height)
            context.strokeStyle = "black"
            context.path = path3
            context.stroke()
        }
    }
    Path {
        id: path3
        startX: 75; startY: 25
        PathCubic {
            x: window.width - 25
            y: window.height - 75
            control1X: x; control1Y: 25
            control2X: 75; control2Y: y
        }
        onChanged: canvas3.requestPaint()
    }
    Path {
        id: path
        startX: 50; startY: 50
        PathCubic {
            x: window.width - 50
            y: window.height - 50
            control1X: x; control1Y: 50
            control2X: 50; control2Y: y
        }
        //onChanged: canvas.requestPaint()
    }

}

