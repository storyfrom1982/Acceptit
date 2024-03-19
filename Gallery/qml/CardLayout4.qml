/**
 * Copyright (C) Olivier Le Doeuff 2019
 * Contact: olivier.ldff@gmail.com
 */

// Qt
import QtQuick
import QtQuick.Layouts

// Qaterial
import Qaterial 1.0 as Qaterial

Qaterial.Card
{
  id: _control

  contentItem: ColumnLayout
  {
    id: _column
    width: parent.width
    spacing: 0

    Qaterial.CardMedia
    {
      height: Qaterial.Style.dense ? 134 : 168
      width: Qaterial.Style.dense ? 134 : 168
      //sourceSize.width: Qaterial.Style.dense ? 134 : 168
      //sourceSize.height: Qaterial.Style.dense ? 134 : 168
      source: _control.media
      clipTop: true
      Layout.fillWidth: true
      Layout.maximumWidth: Qaterial.Style.dense ? 134 : 168
    } // CardMedia

    RowLayout
    {
      Layout.fillWidth: true
      Layout.alignment: Qt.AlignHCenter

      Qaterial.SquareButton
      {
        foregroundColor: Qaterial.Style.secondaryTextColor()
        Layout.alignment: Qt.AlignHCenter
        icon.source: "qrc:/qt/qml/Gallery/icons/heart.svg"
      } // SquareButton

      Qaterial.SquareButton
      {
        foregroundColor: Qaterial.Style.secondaryTextColor()
        Layout.alignment: Qt.AlignHCenter
        icon.source: "qrc:/qt/qml/Gallery/icons/pencil.svg"
      } // SquareButton

      Qaterial.SquareButton
      {
        foregroundColor: Qaterial.Style.secondaryTextColor()
        Layout.alignment: Qt.AlignHCenter
        icon.source: "qrc:/qt/qml/Gallery/icons/plus.svg"
      } // SquareButton
    } // RowLayout
  } // ColumnLayout
} // Card
