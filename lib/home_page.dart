import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const batteryChannel = MethodChannel("getMyBatteryCharge");

  getbatteryLevel() async {
    final arguments = {'name': 'hafeed'};
    final newBatteryLevel =
        await batteryChannel.invokeMethod("getBatteryLevel", arguments);
    setState(() {
      BatteryLevel = '$newBatteryLevel%';
    });
  }

  String BatteryLevel = 'waiting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('method channel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Battery level is $BatteryLevel',
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: getbatteryLevel, child: Text('get Battery Level'))
          ],
        ),
      ),
    );
  }
}
