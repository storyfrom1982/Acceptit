cmake_minimum_required(VERSION 3.16)

project(Acceptit VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Core
    Gui
    Qml
    Quick
    QuickControls2
    Svg
    Xml)

qt_standard_project_setup(REQUIRES 6.7)

qt_add_executable(Acceptit
    main.cpp
)

qt_add_qml_module(Acceptit
    URI Acceptit
    VERSION 1.0
    QML_FILES Main.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(Acceptit PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.Acceptit
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(Acceptit PRIVATE
    Qt::Core
    Qt::Gui
    Qt::Svg
    Qt::Xml
    Qt::Qml
    Qt::Quick
    Qt::QuickControls2
)

include(qmlmodules.cmake)

include(GNUInstallDirs)
install(TARGETS Acceptit
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
