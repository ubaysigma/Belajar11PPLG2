import 'package:belajarflutter11pplg2/pages/confirm_registration_page.dart';
import 'package:belajarflutter11pplg2/pages/login_page.dart';
import 'package:belajarflutter11pplg2/pages/registration_page.dart';
import 'package:belajarflutter11pplg2/pages/list_makanan_page.dart';
import 'package:belajarflutter11pplg2/pages/detail_list_page.dart';
import 'package:belajarflutter11pplg2/pages/main_menu.dart';
import 'package:get/get.dart';

class Routes {
  static const String registraion = "/registraion";
  static const String confirm_registraion = "/confirm_registraion";
  static const String list_makanan = "/list_makanan";
  static const String detailListPage = "/detailListPage";
  static const String main_menu = "/main_menu";
  static const String login_page = "/login_page";
  // dll

  // kita masukkan ke dalam myPages array
  static final myPages = [
    GetPage(name: detailListPage, page: () => DetailListPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: registraion, page: () => RegistrationPage()),
    GetPage(name: confirm_registraion, page: () => ConfirmRegistrationPage()),
    GetPage(name: main_menu, page:() => MainMenu(),),
    GetPage(name: login_page, page: () =>LoginPage(),),
    // dll
  ];
}