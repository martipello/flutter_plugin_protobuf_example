import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:my_plugin/generated/models.pb.dart';
import 'package:my_plugin/my_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> implements MyPluginDelegate {

  @override
  void initState() {
    MyPlugin.shared.pluginDelegate = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: FutureBuilder<String>(
          // future: MyPlugin.platformVersion,
          builder: (context, snapshot){
            return Center(
              child: Text('Running on: ${snapshot.data ?? 'Unknown'}'),
            );
          }
        ),
      ),
    );
  }

  @override
  void getExampleData(ExampleData exampleData) {
    // TODO: implement getExampleData
  }

  @override
  void getListOfExampleData(ExampleDataList exampleDataList) {
    // TODO: implement getListOfExampleData
  }
}
