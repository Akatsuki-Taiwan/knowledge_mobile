import 'package:google_sign_in/google_sign_in.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  static final UserModel _singleton = UserModel._internal();
  factory UserModel() {
    return _singleton;
  }
  UserModel._internal();

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
//      'openid',
//      'profile',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  bool _signedIn = false;

  bool get signedIn {
    return _signedIn;
  }

  void checkSignedIn() {
    _googleSignIn.isSignedIn().then((signedIn) {
      _signedIn = signedIn;
    });
  }

  void signIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }
}