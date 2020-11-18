import 'package:get/get.dart';
import 'package:whatsapp_clone/views/cadastro/cadastro.bind.dart';
import 'package:whatsapp_clone/views/cadastro/cadastro.page.dart';
import 'package:whatsapp_clone/views/login/login.bind.dart';
import 'package:whatsapp_clone/views/login/login.page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.CADASTRO,
      page: () => CadastroPage(),
      binding: CadastronBinding(),
    ),
  ];
}
