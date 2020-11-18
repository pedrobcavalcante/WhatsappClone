import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseProvider {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final Future<FirebaseApp> initialization = Firebase.initializeApp();
}
