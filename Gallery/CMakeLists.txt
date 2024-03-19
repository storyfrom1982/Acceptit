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
    QML_FILES qml/AppBarBottomPage.qml qml/AppBarContent.qml qml/AppBarTopPage.qml qml/BannerPage.qml qml/ButtonPage.qml qml/CardLayout1.qml qml/CardLayout2.qml qml/CardLayout3.qml qml/CardLayout4.qml qml/CardPage.qml qml/ClusteredTabBarPage.qml qml/ControlButtonPage.qml qml/DateTimePickersPage.qml qml/DelegatePage.qml qml/DialogDelegatePage.qml qml/DialogPage.qml qml/FABPage.qml qml/FaderPage.qml qml/FixedTabBarPage.qml qml/FooterTabBarPage.qml qml/FramePage.qml qml/GroupBoxLayout.qml qml/GroupBoxPage.qml qml/IconButtonPage.qml qml/LatoTabBarPage.qml qml/Main.qml qml/MaterialPage.qml qml/MenuBarPage.qml qml/ScrollableTabBarPage.qml qml/SlidersPage.qml qml/SnackbarPage.qml qml/StepperPage.qml qml/TabBarPage.qml qml/TextFieldPage.qml qml/ToolTipPage.qml qml/TypoPage.qml qml/TypoPageEntry.qml
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

include(GNUInstallDirs)
install(TARGETS Gallery
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
