import 'package:belajarflutter11pplg2/menu/history_page.dart';
import 'package:belajarflutter11pplg2/menu/home_page.dart';
import 'package:belajarflutter11pplg2/menu/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {

  final RxInt selectedIndex = 0.obs;


  void changePage(int index){
    selectedIndex.value = index;

  }

  List<Widget> listpages = [HomePage(),HistoryPage(),ProfilePage()];
  

}