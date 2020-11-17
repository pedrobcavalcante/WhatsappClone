import 'package:get/get.dart';
import 'package:whatsapp_clone/views/login/login.bind.dart';
import 'package:whatsapp_clone/views/login/login.page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
  ];
}
