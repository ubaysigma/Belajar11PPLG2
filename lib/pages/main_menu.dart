import 'package:belajarflutter11pplg2/controllers/main_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/menu/home_page.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return  Obx(()=>Scaffold(
      body:IndexedStack(children: controller.listpages, 
                        index: controller.selectedIndex.value,
                        ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.changePage,
        items:[
            BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: "History",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
            ),
        ]
      ),

    ));
  }
}