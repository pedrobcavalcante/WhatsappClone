import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:whatsapp_clone/shared/models/user_res.model.dart';
import 'package:whatsapp_clone/shared/models/usuario.model.dart';

class ProviderFirebase {
  static Future<UserResModel> cadastrar(Usuario usuario) async {
    UserResModel res = UserResModel();
    try {
      await Firebase.initializeApp();
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
}
