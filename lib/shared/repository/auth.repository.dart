import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatsapp_clone/shared/models/user_res.model.dart';
import 'package:whatsapp_clone/shared/models/usuario.model.dart';

class ProviderFirebase {
  static Future<UserResModel> cadastrar(Usuario usuario) async {
    UserResModel res = UserResModel();
    try {
      final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      res.userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: usuario.email, password: usuario.senha);
      res.code = "sucess";
    } catch (e) {
      res.firebaseAuthException = e;
      res.code = e.code;
    }
    return res;
  }

  static Future addUsuario(Usuario usuario, String uid) async {
    await FirebaseFirestore.instance
        .collection('usuarios')
        .doc(uid)
        .set({"login": usuario.login, "email": usuario.email});
  }
}
