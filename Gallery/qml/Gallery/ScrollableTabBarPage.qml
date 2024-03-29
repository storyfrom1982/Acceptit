/**
 * Copyright (C) Olivier Le Doeuff 2019
 * Contact: olivier.ldff@gmail.com
 */

// Qt
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// Qaterial
import Qaterial 1.0 as Qaterial

Qaterial.Page
{
  id: _root
  property bool enabled: true

  Qaterial.Pane
  {
    padding: 0

    elevation: 20
    anchors.centerIn: parent
    width: parent.width - 30
    height: parent.height - 40
    implicitHeight: height

    Qaterial.Page
    {
      clip: true
      anchors.fill: parent

      header: Qaterial.ToolBar
      {
        ColumnLayout
        {
          anchors.fill: parent
          spacing: 0
          id: _column

          Qaterial.LabelHeadline6
          {
            id: titleLabel

            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onPrimary: true
            Layout.topMargin: (Qaterial.Style.toolbar.implicitHeight - implicitHeight) / 2
            Layout.bottomMargin: (Qaterial.Style.toolbar.implicitHeight - implicitHeight) / 2

            text: "Scrollable Tab Bar"
            elide: Label.ElideRight
          } // Label

          Qaterial.ScrollableTabBar
          {
            id: tabBar
            width: _column.width
            currentIndex: swipeView.currentIndex
            onPrimary: true
            enabled: _root.enabled

            minWidth: 130
            maxElement: 6

            model: ListModel
            {
              ListElement { text: "Chapter 1" } // ListElement
              ListElement { text: "Chapter 2" } // ListElement
              ListElement { text: "Chapter 3" } // ListElement
              ListElement { text: "Chapter 4" } // ListElement
              ListElement { text: "Chapter 5" } // ListElement
              ListElement { text: "Chapter 6" } // ListElement
              ListElement { text: "Chapter 7" } // ListElement
              ListElement { text: "Chapter 8" } // ListElement
              ListElement { text: "Chapter 9" } // ListElement
              ListElement { text: "Chapter 10" } // ListElement
              ListElement { text: "Chapter 11" } // ListElement
              ListElement { text: "Chapter 12" } // ListElement
              ListElement { text: "Chapter 13" } // ListElement
              ListElement { text: "Chapter 14" } // ListElement
              ListElement { text: "Chapter 15" } // ListElement
              ListElement { text: "Chapter 16" } // ListElement
              ListElement { text: "Chapter 17" } // ListElement
              ListElement { text: "Chapter 18" } // ListElement
              ListElement { text: "Chapter 19" } // ListElement
              ListElement { text: "Chapter 20" } // ListElement
            } // ListModel
          } // ScrollableTabBar
        } // ColumnLayout
      } // ToolBar

      Qaterial.SwipeView
      {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        interactive: _root.enabled

        Repeater
        {
          model: 20
          Qaterial.LabelHeadline4
          {
            width: swipeView.width
            height: swipeView.height
            text: "Chapter " + (index + 1)
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
          } // Label
        } // Repeater
      } // SwipeView
    } // Page
  } // Pane
} // Page
