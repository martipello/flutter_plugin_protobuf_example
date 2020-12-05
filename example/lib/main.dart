import 'package:flutter/material.dart';
import 'package:my_plugin/generated/models.pb.dart';
import 'package:my_plugin/generated/timestamp.pbserver.dart';
import 'package:my_plugin/my_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> implements MyPluginDelegate {
  final dummyFailedData = ExampleData.create()
    ..displayName = 'Dummy data'
    ..enum_2 = ExampleEnum.FAILED
    ..issueDate = Timestamp().createEmptyInstance();

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<bool>(
                future: MyPlugin.shared
                    .sendExampleDataToAndroid(dummyFailedData),
                builder: (context, snapshot) {
                  return Center(
                    child: Text('SUCCESS ? ${snapshot.data}'),
                  );
                }),
            FutureBuilder<ExampleData>(
                future: MyPlugin.shared
                    .sendExampleDataToAndroidForConversion(dummyFailedData),
                builder: (context, snapshot) {
                  return Center(
                    child: Text('${snapshot.data?.enum_2?.name ?? 'Unknown'}'),
                  );
                }),
          ],
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
