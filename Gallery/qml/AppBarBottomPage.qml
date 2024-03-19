/**
 * Copyright (C) Olivier Le Doeuff 2019
 * Contact: olivier.ldff@gmail.com
 */

// Qt
import QtQuick
import QtQuick.Layouts

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
      title: "App Bar Bottom"
    } // AppBarContent
  } // AppBar

  footer: Qaterial.ToolBar
  {
    Row
    {
      anchors.verticalCenter: parent.verticalCenter
      spacing: 0

      Qaterial.AppBarButton
      {
        icon.source: "qrc:/qt/qml/Gallery/icons/menu.svg"
        onPrimary: true
      } // AppBarButton

      Qaterial.AppBarButton
      {
        icon.source: "qrc:/qt/qml/Gallery/icons/settings.svg"
        onPrimary: true
      } // AppBarButton
    } // Row
  } // AppBar
} // Page
