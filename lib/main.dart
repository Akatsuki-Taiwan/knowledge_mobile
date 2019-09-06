import 'package:flutter/material.dart';
import 'scene/home.dart';
import 'model/user.dart';

void main() {
  UserModel().checkSignedIn();
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
      home: LoginScene(title: 'Flutter Demo Home Page'),
    );
  }
}

