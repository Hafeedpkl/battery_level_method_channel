import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class batteryLevelController with ChangeNotifier {
  static const batteryChannel = MethodChannel("getMyBatteryCharge");
  String BatteryLevel = 'waiting';
  getbatteryLevel() async {
    final arguments = {'name': 'hafeed'};
    final newBatteryLevel =
        await batteryChannel.invokeMethod("getBatteryLevel", arguments);

    BatteryLevel = '$newBatteryLevel%';
    notifyListeners();
  }
}
