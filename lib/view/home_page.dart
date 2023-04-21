import 'package:battery_level_method_channel/controller/battery_level_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('method channel'),
      ),
      body: Center(
        child: Consumer<batteryLevelController>(builder: (context, value, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Battery level is ${value.BatteryLevel}',
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: value.getbatteryLevel,
                  child: Text('get Battery Level'))
            ],
          );
        }),
      ),
    );
  }
}
