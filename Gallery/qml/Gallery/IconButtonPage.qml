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
  id: page

  header: Qaterial.ToolBar
  {
    ColumnLayout
    {
      anchors.fill: parent
      AppBarContent { title: "Icon Buttons" } // AppBarContent
    } // ColumnLayout
  } // ToolBar

  Qaterial.ScrollablePage
  {
    anchors.fill: parent
    pane.padding: 16

    ColumnLayout
    {
      width: parent.width
      spacing: 20

      Qaterial.Label
      {
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignTop

        wrapMode: Label.Wrap
        text: "Icon buttons are round or square button dedicated to one action."
        horizontalAlignment: Text.AlignHCenter
      } // Label

      Qaterial.LabelHeadline4
      {
        text: "AppBar Button"
        Layout.fillWidth: true
        horizontalAlignment: Text.AlignHCenter
      } // Label

      RowLayout
      {
        Layout.alignment: Qt.AlignHCenter
        spacing: 20

        Qaterial.AppBarButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/arrow-left.svg"
        } // AppBarButton

        Qaterial.AppBarButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/arrow-left.svg"
          enabled: false
        } // AppBarButton
      } // RowLayout

      Qaterial.LabelHeadline4
      {
        text: "Round Button"
        Layout.fillWidth: true
        horizontalAlignment: Text.AlignHCenter
      } // Label

      RowLayout
      {
        Layout.alignment: Qt.AlignHCenter
        spacing: 20

        Qaterial.RoundButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/thumb-up.svg"
          checkable: true

        } // RoundButton

        Qaterial.RoundButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/thumb-up.svg"
        } // RoundButton

        Qaterial.RoundButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/thumb-up.svg"
          enabled: false
        } // RoundButton
      } // RowLayout

      Qaterial.LabelHeadline4
      {
        text: "Square Button"
        Layout.fillWidth: true
        horizontalAlignment: Text.AlignHCenter
      } // Label

      RowLayout
      {
        Layout.alignment: Qt.AlignHCenter
        spacing: 20

        Qaterial.SquareButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/heart.svg"
          checkable: true
        } // SquareButton

        Qaterial.SquareButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/heart.svg"
        } // SquareButton

        Qaterial.SquareButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/heart.svg"
          enabled: false
        } // SquareButton
      } // RowLayout

      Qaterial.LabelHeadline4
      {
        text: "Toggle Button"
        Layout.fillWidth: true
        horizontalAlignment: Text.AlignHCenter
      } // Label

      RowLayout
      {
        Layout.alignment: Qt.AlignHCenter
        spacing: 0

        Row
        {
          property int checked: 0

          Qaterial.ToggleButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-align-left.svg"
            onClicked: parent.checked = 0
            checked: parent.checked === 0
          } // ToggleButton

          Qaterial.ToggleButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-align-center.svg"
            onClicked: parent.checked = 1
            checked: parent.checked === 1
          } // ToggleButton

          Qaterial.ToggleButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-align-right.svg"
            onClicked: parent.checked = 2
            checked: parent.checked === 2
          } // ToggleButton
        } // Row

        Qaterial.ToggleSeparator {} // ToggleSeparator

        Row
        {
          property int checked: 0

          Qaterial.ToggleButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-bold.svg"
            onClicked: parent.checked = 0
            checked: parent.checked === 0
          } // ToggleButton

          Qaterial.ToggleButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-italic.svg"
            onClicked: parent.checked = 1
            checked: parent.checked === 1
          } // ToggleButton

          Qaterial.ToggleButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-underline.svg"
            onClicked: parent.checked = 2
            checked: parent.checked === 2
          } // ToggleButton
        } // Row

        Qaterial.ToggleSeparator {} // ToggleSeparator

        Qaterial.ToggleButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/pencil.svg"
          enabled: false
        } // ToggleButton
      } // RowLayout

      Qaterial.LabelHeadline4
      {
        text: "Tool Button"
        Layout.fillWidth: true
        horizontalAlignment: Text.AlignHCenter
      } // Label

      RowLayout
      {
        Layout.alignment: Qt.AlignHCenter
        spacing: 0

        Row
        {
          property int checked: 0

          Qaterial.ToolButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-align-left.svg"
            onClicked: parent.checked = 0
            checked: parent.checked === 0
          } // ToolButton

          Qaterial.ToolButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-align-center.svg"
            onClicked: parent.checked = 1
            checked: parent.checked === 1
          } // ToolButton

          Qaterial.ToolButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-align-right.svg"
            onClicked: parent.checked = 2
            checked: parent.checked === 2
          } // ToolButton
        } // Row

        Qaterial.ToolSeparator {} // ToggleSeparator

        Row
        {
          property int checked: 0

          Qaterial.ToolButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-bold.svg"
            onClicked: parent.checked = 0
            checked: parent.checked === 0
          } // ToolButton

          Qaterial.ToolButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-italic.svg"
            onClicked: parent.checked = 1
            checked: parent.checked === 1
          } // ToolButton

          Qaterial.ToolButton
          {
            icon.source: "qrc:/qt/qml/Gallery/icons/format-underline.svg"
            onClicked: parent.checked = 2
            checked: parent.checked === 2
          } // ToolButton
        } // Row

        Qaterial.ToolSeparator {} // ToggleSeparator

        Qaterial.ToolButton
        {
          icon.source: "qrc:/qt/qml/Gallery/icons/pencil.svg"
          enabled: false
        } // ToolButton
      } // RowLayout
    } // ColumnLayout
  } // ScrollablePage
} // Page
