import 'package:flutter/material.dart';
import 'scene/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _appName = 'Akatsuki Books';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScene(title: 'Login'),
    );
  }
}

