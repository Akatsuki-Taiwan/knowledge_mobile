import 'package:flutter/material.dart';
import 'package:Books/model/user.dart';

class LoginScene extends StatefulWidget {
  LoginScene({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginSceneState createState() => _LoginSceneState();
}

class _LoginSceneState extends State<LoginScene> {
  Widget _googleSignInButton() {
    return Container(
      margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
      child: RaisedButton(
          padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
          color: const Color(0xFF4285F4),
          onPressed: () {
            debugPrint('Try google signin');
            UserModel().signIn();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'images/icons/google.png',
                height: 48.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                    "Sign in with Google",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/icons/icon.png'),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: _googleSignInButton()
            )
          ],
        ),
      ),
    );
  }
}