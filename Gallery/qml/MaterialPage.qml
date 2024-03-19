/**
 * Copyright (C) Olivier Le Doeuff 2019
 * Contact: olivier.ldff@gmail.com
 */

// Qt
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

// Qaterial
import Qaterial 1.0 as Qaterial

Qaterial.Page
{
  id: _page
  header: Qaterial.ToolBar
  {
    AppBarContent
    {
      anchors.fill: parent;
      title: "Qaterial Gallery " + Qaterial.Version.readable
    } // AppBarContent
  } // ToolBar

  ListModel
  {
    id: _galleryModel

    ListElement
    {
      title: "App Bars: top"
      text: "Information and actions relating to the current screen."
      icon: "qrc:/qt/qml/Gallery/icons/topApp.svg"
      source: "qrc:/qt/qml/Gallery/qml/AppBarTopPage.qml"
    } // ListElement

    ListElement
    {
      title: "ToolTip"
      text: "Display informative text when users hover over, focus on, or tap an element."
      icon: "qrc:/Qaterial/Icons/tooltip-text-outline.svg"
      source: "qrc:/qt/qml/Gallery/qml/ToolTipPage.qml"
    } // ListElement

    ListElement
    {
      title: "Date / Time Picker"
      text: "Date pickers and Time pickers provide a simple way to select a single value from a pre-determined set."
      icon: "qrc:/Qaterial/Icons/clock-outline.svg"
      source: "qrc:/qt/qml/Gallery/qml/DateTimePickersPage.qml"
    } // ListElement

    ListElement
    {
      title: "Menu Bar"
      text: "MenuBar, MenuBarItem, Menu, MenuItem, ..."
      icon: "qrc:/qt/qml/Gallery/icons/menu.svg"
      source: "qrc:/qt/qml/Gallery/qml/MenuBarPage.qml"
    } // ListElement

    ListElement
    {
      title: "App Bars: bottom"
      text: "Navigation and key actions at the bottom of mobile screens."
      icon: "qrc:/qt/qml/Gallery/icons/bottomApp.svg"
      source: "qrc:/qt/qml/Gallery/qml/AppBarBottomPage.qml"
    } // ListElement

    ListElement
    {
      title: "Button"
      text: "Buttons allow users to take actions, and make choices, with a single tap."
      icon: "qrc:/qt/qml/Gallery/icons/button.svg"
      source: "qrc:/qt/qml/Gallery/qml/ButtonPage.qml"
    } // ListElement

    ListElement
    {
      title: "Icon Button"
      text: "Round, Square and tool"
      icon: "qrc:/qt/qml/Gallery/icons/thumb-up.svg"
      source: "qrc:/qt/qml/Gallery/qml/IconButtonPage.qml"
    } // ListElement

    ListElement
    {
      title: "FAB"
      text: "A floating action button (FAB) represents the primary action of a screen."
      icon: "qrc:/qt/qml/Gallery/icons/plus-circle-outline.svg"
      source: "qrc:/qt/qml/Gallery/qml/FABPage.qml"
    } // ListElement

    ListElement
    {
      title: "Selection controls"
      text: "Selection controls allow the user to select options."
      icon: "qrc:/qt/qml/Gallery/icons/checkbox-marked.svg"
      source: "qrc:/qt/qml/Gallery/qml/ControlButtonPage.qml"
    } // ListElement

    ListElement
    {
      title: "Typography"
      text: "Display, Header, Title, Content, ..."
      icon: "qrc:/qt/qml/Gallery/icons/format-letter-case.svg"
      source: "qrc:/qt/qml/Gallery/qml/TypoPage.qml"
    } // ListElement

    ListElement
    {
      title: "Text Field"
      text: "Text fields let users enter and edit text."
      icon: "qrc:/qt/qml/Gallery/icons/textbox.svg"
      source: "qrc:/qt/qml/Gallery/qml/TextFieldPage.qml"
    } // ListElement

    ListElement
    {
      title: "Tabs"
      text: "Tabs organize content across different screens, data sets, and other interactions."
      icon: "qrc:/qt/qml/Gallery/icons/tab.svg"
      source: "qrc:/qt/qml/Gallery/qml/TabBarPage.qml"
    } // ListElement

    ListElement
    {
      title: "Cards"
      text: "Cards contain content and actions about a single subject."
      icon: "qrc:/qt/qml/Gallery/icons/pane.svg"
      source: "qrc:/qt/qml/Gallery/qml/CardPage.qml"
    } // ListElement

    ListElement
    {
      title: "Frame";
      text: "Visual frame for a logical group of controls."
      icon: "qrc:/qt/qml/Gallery/icons/frame.svg"
      source: "qrc:/qt/qml/Gallery/qml/FramePage.qml"
    } // ListElement

    ListElement
    {
      title: "Group Box"
      text: "Visual frame and title for a logical group of controls."
      icon: "qrc:/qt/qml/Gallery/icons/groupBox.svg"
      source: "qrc:/qt/qml/Gallery/qml/GroupBoxPage.qml"
    } // ListElement

    ListElement
    {
      title: "SnackBars"
      text: "Snackbars provide brief messages about app processes."
      icon: "qrc:/qt/qml/Gallery/icons/snackbar.svg"
      source: "qrc:/qt/qml/Gallery/qml/SnackbarPage.qml"
    } // ListElement

    ListElement
    {
      title: "Banners"
      text: "A banner displays a prominent message and related optional actions."
      icon: "qrc:/qt/qml/Gallery/icons/banner.svg"
      source: "qrc:/qt/qml/Gallery/qml/BannerPage.qml"
    } // ListElement

    ListElement
    {
      title: "Dialog"
      text: "Dialogs inform users about a task and can contain critical information, require decisions, or involve multiple tasks."
      icon: "qrc:/qt/qml/Gallery/icons/dialog.svg"
      source: "qrc:/qt/qml/Gallery/qml/DialogPage.qml"
    } // ListElement

    ListElement
    {
      title: "Sliders"
      text: "Sliders are used to select values by sliding a handle along a track. "
      icon: "qrc:/qt/qml/Gallery/icons/sliders.svg"
      source: "qrc:/qt/qml/Gallery/qml/SlidersPage.qml"
    } // ListElement

    ListElement
    {
      title: "Steppers"
      text: "Steppers are Navigation Components used to display progress through a sequence of logical and numbered steps."
      icon: "qrc:/qt/qml/Gallery/icons/format-list-checks.svg"
      source: "qrc:/qt/qml/Gallery/qml/StepperPage.qml"
    } // ListElement

    ListElement
    {
      title: "Dialog Delegates"
      text: "Item delegate than call a dialog"
      icon: "qrc:/qt/qml/Gallery/icons/delegate.svg"
      source: "qrc:/qt/qml/Gallery/qml/DialogDelegatePage.qml"
    } //ListElement

    /*ListElement
    {
      title: "Fader"
      text: "An Item that can have a value between 0 and 100"
      icon: "qrc:/qt/qml/Gallery/icons/fader.svg"
      source: "qrc:/qt/qml/AcceptitFaderPage.qml"
    } // ListElement*/
  } // ListModel

  Component
  {
    id: _galleryModelDelegate

    Qaterial.ItemDelegate
    {
      width: _page.width
      text: model.title
      secondaryText: model.text ? model.text : ""
      highlighted: ListView.isCurrentItem
      icon.source: model.icon
      fillIcon: Qaterial.Style.theme !== Qaterial.Style.Theme.Light
      outlinedIcon: Qaterial.Style.theme === Qaterial.Style.Theme.Light
      highlightedIcon: true
      reverseHighlightIcon: false

      onClicked:
      {
        ListView.currentIndex = index
        stackView.push(model.source)
      }
    } // ItemDelegate
  } // Component

  ListView
  {
    id: _listView

    focus: true
    currentIndex: -1
    anchors.fill: parent

    delegate: _galleryModelDelegate
    model: _galleryModel

    ScrollIndicator.vertical: Qaterial.ScrollIndicator {} // ScrollIndicator
  } // ListView
} // Page
