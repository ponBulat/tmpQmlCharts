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

        upperSeries: LineSeries { id: lineSeries }
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
