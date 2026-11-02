import 'package:belajarflutter11pplg2/components/mybutton.dart';
import 'package:belajarflutter11pplg2/components/mytextfield.dart';
import 'package:belajarflutter11pplg2/controllers/login_page_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   new({super.key});

  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login API"),),
      body: Center(
        child: Column(
          children: [
            Mytextfield(hint: "Masukkan Username", controller: controller.txtusername),
            Mytextfield(hint: "Masukkan Password", controller: controller.txtpassword),
            Obx(() => controller.isLoading.value ? Center(child: CircularProgressIndicator(),) :
            Mybutton(text: "Enter",onPressed: () {
              controller.login();  
            },
            )),
            
          ],
        ),
      ),
    );
  }
}