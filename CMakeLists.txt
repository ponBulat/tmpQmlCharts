cmake_minimum_required(VERSION 3.24)

project(tmpQmlCharts VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick Charts)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(apptmpQmlCharts
    main.cpp
)

qt_add_qml_module(apptmpQmlCharts
    URI tmpQmlCharts
    VERSION 1.0
    QML_FILES Main.qml MyCharts.qml
)

set_target_properties(apptmpQmlCharts PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptmpQmlCharts PUBLIC
    Qt::Quick
    Qt::Charts
)

install(TARGETS apptmpQmlCharts
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
