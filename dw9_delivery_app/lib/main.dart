import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:dw9_delivery_app/app/core/config/env/env.dart';
import 'package:dw9_delivery_app/dw9_delivery_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await Env.i.load();
  WidgetsFlutterBinding.ensureInitialized();
  await setWindowSizeDesktop();
  runApp(const Dw9DeliveryApp());
}

setWindowSizeDesktop() async {
  if (Platform.isWindows) {
    await DesktopWindow.setWindowSize(
        Size(392.72727272727275, 803.6363636363636));
  }
}
