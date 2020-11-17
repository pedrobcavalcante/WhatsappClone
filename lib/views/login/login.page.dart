import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/views/shared/widgets/textFild.widget.dart';

import 'login.controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
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
                            "E-mail",
                            autofocus: true,
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
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(32),
                          color: Colors.green,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(32),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Text(
                                "Entrar",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            onTap: () {},
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
