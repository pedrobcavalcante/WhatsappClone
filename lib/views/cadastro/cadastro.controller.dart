import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/shared/models/user_res.model.dart';
import 'package:whatsapp_clone/shared/models/usuario.model.dart';
import 'package:whatsapp_clone/shared/repository/auth.repository.dart';
import 'package:whatsapp_clone/shared/utils/constants.dart';

class CadastroController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController repetirSenhaController = TextEditingController();

  nullValidator(String value) {
    if (value.isEmpty) {
      return 'Esse Campo não pode estar vazio.';
    }
    return null;
  }

  cadastrar() async {
    if (formKey.currentState.validate()) {
      try {
        if (senhaController.text != repetirSenhaController.text)
          throw "as senhas não conferem.";
        Usuario usuario = Usuario(
            email: emailController.text,
            login: loginController.text,
            senha: senhaController.text);
        UserResModel user = await ProviderFirebase.cadastrar(usuario);
        if (user.code == "sucess") {
          Get.snackbar("Cadastro", "Usuário cadastrado com sucesso!",
              backgroundColor: Constants.branco, barBlur: 1.0);
          Get.back();
        } else
          throw user.firebaseAuthException;
      } catch (e) {
        Get.snackbar("Error!", e.message);
      }
    }
  }
}
