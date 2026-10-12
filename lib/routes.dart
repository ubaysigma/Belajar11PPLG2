import 'package:belajarflutter11pplg2/pages/confirm_registration_page.dart';
import 'package:belajarflutter11pplg2/pages/registration_page.dart';
import 'package:belajarflutter11pplg2/pages/list_makanan_page.dart';
import 'package:belajarflutter11pplg2/pages/detail_list_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registraion = "/registraion";
  static const String confirm_registraion = "/confirm_registraion";
  static const String list_makanan = "/list_makanan";
  static const String detailListPage = "/detailListPage";
  // dll

  // kita masukkan ke dalam myPages array
  static final myPages = [
    GetPage(name: detailListPage, page: () => DetailListPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: registraion, page: () => RegistrationPage()),
    GetPage(name: confirm_registraion, page: () => ConfirmRegistrationPage()),
    // dll
  ];
}