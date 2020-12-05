import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:my_plugin/generated/models.pb.dart';
import './extensions/extensions.dart';

abstract class MyPluginDelegate {
  void getExampleData(ExampleData exampleData);

  void getListOfExampleData(ExampleDataList exampleDataList);
}

class MyPlugin {
  MyPlugin._() {

    _channel.setMethodCallHandler((call) async {
      if (call.method == 'getExampleData') {
        _handleExampleData(call);
      } else if (call.method == 'getListOfExampleData') {
        _handleExampleDataList(call);
      } else {
        print('FLUTTER METHOD NOT FOUND');
      }
    });
  }

  static final shared = MyPlugin._();

  static const MethodChannel _channel = const MethodChannel('my_plugin');

  MyPluginDelegate pluginDelegate;

  void _handleExampleData(MethodCall call) {
    try {
      final data = ExampleData.fromBuffer(call.bytes());
      pluginDelegate?.getExampleData(data);
    } catch (e) {
      //TODO create a method here to handle the serialization error
    }
  }

  void _handleExampleDataList(MethodCall call) {
    try {
      final dataList = ExampleDataList.fromBuffer(call.bytes());
      pluginDelegate?.getListOfExampleData(dataList);
    } catch (e) {
      //TODO create a method here to handle the serialization error
    }
  }

 Future<bool> sendExampleDataToAndroid(ExampleData data) async {
   return await _channel.invokeMethod(
       'sendExampleDataToAndroid', data.writeToBuffer());
 }

  Future<ExampleData> sendExampleDataToAndroidForConversion(ExampleData data) async {
    final Uint8List rawData = await _channel.invokeMethod('sendExampleDataToAndroidForConversion', data.writeToBuffer());
    return ExampleData.fromBuffer(rawData);
  }

}
