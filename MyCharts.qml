import QtQuick
import QtCharts


ChartView {
    title: qsTr( "shape" )

    width: 400
    height: 300
    theme: ChartView.ChartThemeBlueIcy
    antialiasing: true

//     отключим легенды диаграммы
//    legend.visible: false

    AreaSeries {

        name: "AreaSeries name"

//        axisY: ValueAxis {
//            min:0
//            max: 100
//            lineVisible: false
//            labelsColor: "white"
//            labelFormat: "%d"
//        }

        axisX: ValueAxis {
            min:0
            max: 9
//            gridVisible: false
//            labelsVisible: false
//            lineVisible: false
//            shadesVisible: false
//            titleVisible: false
            tickCount: 10

        }

        upperSeries: LineSeries {
            id: lineSeries

//            pointLabelsVisible: true

            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1; y: 0 }
            XYPoint { x: 2; y: 0 }
            XYPoint { x: 3; y: 0 }
            XYPoint { x: 4; y: 0 }
            XYPoint { x: 5; y: 0 }
            XYPoint { x: 6; y: 0 }
            XYPoint { x: 7; y: 0 }
            XYPoint { x: 8; y: 0 }
            XYPoint { x: 9; y: 0 }
        }
    }
}
