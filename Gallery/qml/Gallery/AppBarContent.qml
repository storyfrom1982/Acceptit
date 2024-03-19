/**
 * Copyright (C) Olivier Le Doeuff 2019
 * Contact: olivier.ldff@gmail.com
 */

// Qt
import QtQuick
import QtQuick.Layouts

// Qaterial
import Qaterial 1.0 as Qaterial

RowLayout
{
  Layout.fillWidth: true
  Layout.preferredHeight: Qaterial.Style.toolbar.implicitHeight
  property alias title: _titleLabel.text

  Qaterial.AppBarButton
  {
    id: _backButton
    icon.source: "qrc:/qt/qml/Gallery/icons/arrow-left.svg"
    onClicked: stackView.pop()
    visible: stackView.depth > 1
    onPrimary: true
  } // AppBarButton

  Qaterial.LabelHeadline6
  {
    id: _titleLabel

    Layout.fillWidth: true
    Layout.leftMargin: !_backButton.visible ? 20 : undefined
    onPrimary: true

    text: "Default text"
    elide: Qaterial.Label.ElideRight
  } // Label

  Qaterial.AppBarButton
  {
    icon.source: "qrc:/qt/qml/Gallery/icons/palette.svg"
    onPrimary: true
    onClicked: themeDialog.open()
  } // AppBarButton
} // RowLayout
