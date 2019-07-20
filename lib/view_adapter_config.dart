import 'dart:ui';
import 'package:flutter/rendering.dart';

const double SCREEN_WIDTH = 750;

double getAdapterRatio() {
  return window.physicalSize.width / SCREEN_WIDTH;
}

double getAdapterRatioRatio() {
  return getAdapterRatio() / window.devicePixelRatio;
}

Size getScreenAdapterSize() {
  return Size(window.physicalSize.width / getAdapterRatio(),
      window.physicalSize.height);
}
