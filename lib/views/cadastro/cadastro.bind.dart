import 'package:get/get.dart';

import 'cadastro.controller.dart';

class CadastronBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(() => CadastroController());
  }
}
