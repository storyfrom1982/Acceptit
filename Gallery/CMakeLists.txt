cmake_minimum_required(VERSION 3.16)

project(Gallery VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Core
    Gui
    Qml
    Quick
    QuickControls2
    Svg
    Xml
)

qt_standard_project_setup(REQUIRES 6.7)

add_library(Gallery STATIC)
qt_add_qml_module(Gallery
    URI Gallery
    VERSION 1.0
    RESOURCE_PREFIX "/qt/qml"
    QML_FILES qml/Gallery/AppBarBottomPage.qml qml/Gallery/AppBarContent.qml qml/Gallery/AppBarTopPage.qml qml/Gallery/BannerPage.qml qml/Gallery/ButtonPage.qml qml/Gallery/CardLayout1.qml qml/Gallery/CardLayout2.qml qml/Gallery/CardLayout3.qml qml/Gallery/CardLayout4.qml qml/Gallery/CardPage.qml qml/Gallery/ClusteredTabBarPage.qml qml/Gallery/ControlButtonPage.qml qml/Gallery/DateTimePickersPage.qml qml/Gallery/DelegatePage.qml qml/Gallery/DialogDelegatePage.qml qml/Gallery/DialogPage.qml qml/Gallery/FABPage.qml qml/Gallery/FaderPage.qml qml/Gallery/FixedTabBarPage.qml qml/Gallery/FooterTabBarPage.qml qml/Gallery/FramePage.qml qml/Gallery/GroupBoxLayout.qml qml/Gallery/GroupBoxPage.qml qml/Gallery/IconButtonPage.qml qml/Gallery/LatoTabBarPage.qml qml/Gallery/Main.qml qml/Gallery/MaterialPage.qml qml/Gallery/MenuBarPage.qml qml/Gallery/ScrollableTabBarPage.qml qml/Gallery/SlidersPage.qml qml/Gallery/SnackbarPage.qml qml/Gallery/StepperPage.qml qml/Gallery/TabBarPage.qml qml/Gallery/TextFieldPage.qml qml/Gallery/ToolTipPage.qml qml/Gallery/TypoPage.qml qml/Gallery/TypoPageEntry.qml
    RESOURCES images/card40x40.png images/card80x80_1.png images/card80x80_2.png images/card168x168_1.png images/card168x168_2.png images/card168x168_3.png images/card168x168_4.png images/card168x168_5.png images/card344x194_1.png images/card344x194_2.png images/card344x194_3.png images/delegateLarge.png images/delegateRound.png images/delegateSquare.png
    RESOURCES icons/account.svg icons/airplane.svg icons/alarm.svg icons/album.svg icons/alert-circle.svg icons/arrow-left.svg icons/back.png icons/banner.svg icons/bottomApp.svg icons/briefcase.svg icons/button.svg icons/cake.svg icons/checkbox-marked.svg icons/close-circle.svg icons/compass.svg icons/content-copy.svg icons/crosshairs-gps.svg icons/delegate.svg icons/dialog.svg icons/dots-vertical.svg icons/drawer.png icons/email.svg icons/eye-off.svg icons/eye.svg icons/fader.svg icons/format-align-center.svg icons/format-align-left.svg icons/format-align-right.svg icons/format-bold.svg icons/format-italic.svg icons/format-letter-case.svg icons/format-list-checks.svg icons/format-underline.svg icons/frame.svg icons/groupBox.svg icons/heart.svg icons/map-marker.svg icons/menu.png icons/menu.svg icons/music-note.svg icons/palette.svg icons/pane.svg icons/pencil.svg icons/phone.svg icons/plus-circle-outline.svg icons/plus.svg icons/rename-box.svg icons/settings.svg icons/sliders.svg icons/snackbar.svg icons/tab.svg icons/textbox.svg icons/thumb-up.svg icons/topApp.svg icons/wifi.svg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(Gallery PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.Gallery
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(Gallery PRIVATE
    Qaterial
    Qt::Core
    Qt::Gui
    Qt::Svg
    Qt::Xml
    Qt::Qml
    Qt::Quick
    Qt::QuickControls2
)

list(APPEND QML_IMPORTPATH "${CMAKE_CURRENT_SOURCE_DIR}/qml")
list(APPEND QML_IMPORTPATH ${QML_IMPORT_PATH})
list(APPEND QML2_IMPORTPATH "${CMAKE_CURRENT_SOURCE_DIR}/qml")
list(APPEND QML2_IMPORTPATH ${QML2_IMPORT_PATH})

set(QML_IMPORT_PATH "${QML_IMPORTPATH}" CACHE STRING "Qt Creator 4.1 extra qml import paths" FORCE)
set(QML2_IMPORT_PATH "${QML2_IMPORTPATH}" CACHE STRING "Qt Creator 4.1 extra qml import paths" FORCE)

include(GNUInstallDirs)
install(TARGETS Gallery
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
