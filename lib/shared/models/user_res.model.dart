import 'package:firebase_auth/firebase_auth.dart';

class UserResModel {
  UserCredential userCredential;
  FirebaseAuthException firebaseAuthException;
  String code;

  UserResModel({this.code, this.userCredential, this.firebaseAuthException});
}
