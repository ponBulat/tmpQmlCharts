import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        spacing: 10

        MyCharts { id: myCharts }

        Row {
            x: 50
            Label {
                text: 'x:'
            }
            TextField {
                id: xField
            }
        }

        Row {
            x: 50
            Label {
                text: 'y:'
            }
            TextField {
                id: yField
            }
        }

        Row {
            x: 50
            Label {
                text: 'xMax:'
            }
            TextField {
                id: xMaxField
            }
        }

        Button {
            x: 50
            text: 'tap'
            onClicked: {
                const maxX = +xMaxField.text

                if( maxX > 0 && maxX < 30 )
                    myCharts.setMaxX( maxX )

                myCharts.setValue( +xField.text, +yField.text )
            }
        }
    }


}
