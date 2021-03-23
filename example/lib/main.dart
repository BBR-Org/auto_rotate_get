import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:auto_rotate_get/auto_rotate_get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _autoRoute = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    bool autoRoute;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      autoRoute = await AutoRotateGet.autoRoute;
    } on PlatformException {
      print("Error+++++++++++++++++++++++++++++++++++++++++++++++++");
      autoRoute = false;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _autoRoute = autoRoute;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('AutoRoute: $_autoRoute\n'),
        ),
        floatingActionButton: MaterialButton(
          onPressed: (){
            initPlatformState();
          },
          child: Icon(Icons.add),
          color: Colors.blue,
        ),
      ),
    );
  }
}
