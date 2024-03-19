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

          Qaterial.LabelHeadline6
          {
            id: _titleLabel

            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onPrimary: true
            Layout.topMargin: (Qaterial.Style.toolbar.implicitHeight - implicitHeight) / 2
            Layout.bottomMargin: (Qaterial.Style.toolbar.implicitHeight - implicitHeight) / 2

            text: "Lato Tab Bar"
            elide: Label.ElideRight
          } // Label

          Qaterial.LatoTabBar
          {
            id: _tabBar
            currentIndex: _swipeView.currentIndex
            enabled: _root.enabled

            Layout.fillWidth: true

            Qaterial.LatoTabButton { text: "Landscape" }
            Qaterial.LatoTabButton { text: "City" }
            Qaterial.LatoTabButton { text: "Abstract" }
          } // TabBar
        } // ColumnLayout
      } // ToolBar

      Qaterial.SwipeView
      {
        id: _swipeView
        anchors.fill: parent
        currentIndex: _tabBar.currentIndex
        interactive: _root.enabled
        Item
        {
          width: _swipeView.width
          height: _swipeView.height

          Qaterial.LabelHeadline4
          {
            anchors.centerIn: parent
            text: "Landscape View"
            color: "#FF2196F3"
          } // Label
        } // Item

        Item
        {
          width: _swipeView.width
          height: _swipeView.height

          Qaterial.LabelHeadline4
          {
            anchors.centerIn: parent
            text: "City View"
            color: "#FF00BCD4"
          } // Label
        } // Item

        Item
        {
          width: _swipeView.width
          height: _swipeView.height

          Qaterial.LabelHeadline4
          {
            anchors.centerIn: parent
            text: "Abstract View"
            color: "#FFFFC107"
          } // Label
        } // Item
      } // SwipeView
    } // Page
  } // Pane
} // Page
