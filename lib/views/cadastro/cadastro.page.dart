import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/shared/routers/app_pages.dart';
import 'package:whatsapp_clone/shared/widgets/textFild.widget.dart';

import 'cadastro.controller.dart';

class CadastroPage extends StatelessWidget {
  final CadastroController controller = Get.put(CadastroController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                ),
                Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFieldWidget(
                            "Login",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFieldWidget(
                            "E-mail",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFieldWidget(
                            "Senha",
                            obscureText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFieldWidget(
                            "Repita a Senha",
                            obscureText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.green,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(32),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Text(
                                  "Cadastrar",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: GestureDetector(
                      child: Text("Voltar a tela de Login",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
