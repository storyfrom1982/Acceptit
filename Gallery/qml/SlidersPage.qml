/**
 * Copyright (C) Paul Cales 2020
 * Contact: cales.paul@gmail.com
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
      title: "Sliders"
    } // AppBarContent
  } // ToolBar

  Qaterial.SwipeView
  {
    id: _swipeView
    anchors.fill: parent
    currentIndex: _tabBar.currentIndex

    Qaterial.Pane
    {
      width: _swipeView.width
      height: _swipeView.height
      padding: 16

      Column
      {
        width: parent.width

        Qaterial.LabelBody1
        {
          text: "Slider (" + Math.round(_slider.value) + ")"
          width: parent.width
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.Slider
        {
          id: _slider
          width: parent.width
          from: 0
          to: 100
          stepSize: 1
          value: 20

          Qaterial.ToolTip
          {
            parent: _slider.handle
            visible: _slider.pressed
            y: -parent.height - height - 8
            text: _slider.value.toFixed(0)
            backgroundRadius: Math.min(width, height) / 2
          }
        } // Slider

        Qaterial.LabelBody1
        {
          text: "Range slider (" + Math.round(_rangeSlider.first.value) + " ; " + Math.round(_rangeSlider.second
            .value) + ")"
          width: parent.width
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.RangeSlider
        {
          id: _rangeSlider
          width: parent.width
          from: 0
          to: 100
          stepSize: 1
          first.value: 20
          second.value: 80
        } // RangeSlider

        Qaterial.LabelBody1
        {
          text: "Disabled slider"
          width: parent.width
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.Slider
        {
          width: parent.width
          enabled: false
          from: 0
          to: 100
          value: 50
          stepSize: 1
        } // Slider

        Qaterial.LabelBody1
        {
          text: "Disabled Range Slider"
          width: parent.width
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.RangeSlider
        {
          width: parent.width
          enabled: false
          from: 0
          to: 100
          first.value: 30
          second.value: 70
          stepSize: 1
        } // RangeSlider
      } // ColumnLayout
    } // Pane

    Qaterial.Pane
    {
      width: _swipeView.width
      height: _swipeView.height
      padding: 16

      GridLayout
      {
        anchors.fill: parent
        columnSpacing: 6
        rowSpacing: 6
        columns: 2

        Qaterial.LabelBody1
        {
          text: "Slider (" + Math.round(_sliderVertical.value) + ")"
          Layout.fillWidth: true
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.LabelBody1
        {
          text: "Range slider (" + Math.round(_rangeSliderVertical.first.value) + " ; " + Math.round(
            _rangeSliderVertical.second.value) + ")"
          Layout.fillWidth: true
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.Slider
        {
          id: _sliderVertical
          Layout.fillWidth: true
          orientation: Qt.Vertical
          from: 0
          to: 100
          stepSize: 1
          value: 20
        } // Slider

        Qaterial.RangeSlider
        {
          id: _rangeSliderVertical
          Layout.fillWidth: true
          orientation: Qt.Vertical
          from: 0
          to: 100
          stepSize: 1
          first.value: 20
          second.value: 80
        } // RangeSlider

        Qaterial.LabelBody1
        {
          text: "Disabled slider"
          Layout.fillWidth: true
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.LabelBody1
        {
          text: "Disabled Range Slider"
          Layout.fillWidth: true
          horizontalAlignment: Text.AlignHCenter
        } // Label

        Qaterial.Slider
        {
          Layout.fillWidth: true
          enabled: false
          orientation: Qt.Vertical
          from: 0
          to: 100
          value: 50
          stepSize: 1
        } // Slider

        Qaterial.RangeSlider
        {
          Layout.fillWidth: true
          enabled: false
          orientation: Qt.Vertical
          from: 0
          to: 100
          first.value: 30
          second.value: 70
          stepSize: 1
        } // RangeSlider
      } // ColumnLayout
    } // Pane

    Qaterial.Pane
    {
      width: _swipeView.width
      height: _swipeView.height
      padding: 16

      Column
      {
        width: parent.width
        spacing: 20

        Qaterial.SliderDelegate
        {
          id: _sliderDelegate
          width: parent.width
          from: 0
          to: 100
          value: 20
          stepSize: 1
          text: "Slider (" + Math.round(_sliderDelegate.value) + ")"
          secondaryText: "Slider from 0 to 100 (stepSize: 1)"
        } // SliderDelegate

        Qaterial.SliderDelegate
        {
          id: _sliderDelegateSnap1
          width: parent.width
          from: 0
          to: 100
          value: 30
          stepSize: 10
          snapMode: Slider.SnapAlways
          text: "Slider (" + Math.round(_sliderDelegateSnap1.value) + ")"
          secondaryText: "Slider from 0 to 100 (stepSize: 10) with snap on"
        } // SliderDelegate

        Qaterial.SliderDelegate
        {
          id: _sliderDelegateSnap2
          width: parent.width
          from: 0
          to: 100
          value: 80
          stepSize: 10
          snapMode: Slider.SnapOnRelease
          text: "Slider (" + Math.round(_sliderDelegateSnap2.value) + ")"
          secondaryText: "Slider from 0 to 100 (stepSize: 10) with snap on release"
        } // SliderDelegate

        Qaterial.RangeSliderDelegate
        {
          id: _rangeSliderDelegate
          width: parent.width
          from: 0
          to: 100
          stepSize: 1
          first.value: 20
          second.value: 40
          text: "Range slider (" + Math.round(_rangeSliderDelegate.first.value) + " ; " + Math.round(
            _rangeSliderDelegate.second.value) + ")"
          secondaryText: "Range slider from 0 to 100 (stepSize: 1)"
        } // RangeSliderDelegate

        Qaterial.RangeSliderDelegate
        {
          id: _rangeSliderDelegateSnap1
          width: parent.width
          from: 0
          to: 100
          stepSize: 10
          first.value: 30
          second.value: 70
          snapMode: RangeSlider.SnapAlways
          text: "Range slider (" + Math.round(_rangeSliderDelegateSnap1.first.value) + " ; " + Math.round(
            _rangeSliderDelegateSnap1.second.value) + ")"
          secondaryText: "Range slider from 0 to 100 (stepSize: 10) with snap on"
        } // RangeSliderDelegate

        Qaterial.RangeSliderDelegate
        {
          id: _rangeSliderDelegateSnap2
          width: parent.width
          from: 0
          to: 100
          stepSize: 10
          first.value: 40
          second.value: 80
          snapMode: RangeSlider.SnapOnRelease
          text: "Range slider (" + Math.round(_rangeSliderDelegateSnap2.first.value) + " ; " + Math.round(
            _rangeSliderDelegateSnap2.second.value) + ")"
          secondaryText: "Range slider from 0 to 100 (stepSize: 10) with snap on release"
        } // RangeSliderDelegate
      } // Column
    } // Pane
  } // SwipeView

  footer: Qaterial.FixedTabBar
  {
    id: _tabBar
    elevation: 20
    currentIndex: _swipeView.currentIndex

    model: ListModel
    {
      ListElement { text: "Horizontal" }
      ListElement { text: "Vertical" }
      ListElement { text: "Delegate" }
    } // ListModel
  } // FixedTabBar
} // Page
