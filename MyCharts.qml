import QtQuick
import QtCharts

ChartView {
    title: qsTr( "Заголовок диаграммы" )

    width: 600
    height: 300
    theme: ChartView.ChartThemeBlueIcy
    antialiasing: true

    // по умолчанию 20
    margins.bottom: 0;
    margins.left: 0;
    margins.top: 0;
    margins.right: 0;

//    dropShadowEnabled: true

//     отключим легенды диаграммы
    legend.visible: false

    AreaSeries {

        name: "Название графика"


        axisX: ValueAxis {
            id:xAxis
            min:0
            max: 10
            tickType: ValueAxis.TicksDynamic
            tickInterval: 1
            labelFormat: '%d'

//            gridVisible: false
//            labelsVisible: false
//            lineVisible: false
//            shadesVisible: false
//            titleVisible: false
        }

        axisY: ValueAxis {
            min:0
            max: 100
        }

        upperSeries: LineSeries {
            id: lineSeries
            width: 10
//            style: Qt.DashLine
//            capStyle:  Qt.FlatCap

//            pointsVisible: true

            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1; y: 10 }
            XYPoint { x: 2; y: 20 }
            onClicked: console.log("onClicked: " + point.x + ", " + point.y);
            onPressed: console.log( "onPressed" )
            onHovered: console.log( "onHovered" )
        }
    }



    function setValue( x, y ) {
        lineSeries.insert(x, x, y)
    }

    function setMaxX( maxX ) {
        if( maxX < 0 || maxX > 30 )
            console.log( "unacceptable value number: ", maxX )
        else
            xAxis.max = maxX
    }
}
