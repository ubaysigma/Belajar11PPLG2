import 'package:belajarflutter11pplg2/menu/history_page.dart';
import 'package:belajarflutter11pplg2/menu/home_page.dart';
import 'package:belajarflutter11pplg2/menu/profile_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../models/menu_model.dart';

class DrawerControllerX extends GetxController {
  var selectedIndex = 0.obs;

  final List<MenuModel> menuItems = [
    MenuModel(title: 'Home', icon: Icons.dashboard),
    MenuModel(title: 'History', icon: Icons.people),
    MenuModel(title: 'Profile', icon: Icons.person),
  ];

  final List<Widget> pages = [
    HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
    Get.back();
  }
}