import QtQuick
import QtCharts

ChartView {
    title: qsTr( "Заголовок диаграммы" )

    width: 400
    height: 300
    theme: ChartView.ChartThemeBlueIcy
    antialiasing: true

    localizeNumbers: true
    locale: Qt.locale("ru_RU")

//    dropShadowEnabled: true

//     отключим легенды диаграммы
//    legend.visible: false

    AreaSeries {

        name: "Название графика"

        axisX: ValueAxis {
            id:xAxis
            min:0
            max: 10
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
