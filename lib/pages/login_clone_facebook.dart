import 'package:flutter/material.dart';
import 'package:belajarflutter11pplg2/components/mytextfield.dart';
import 'package:belajarflutter11pplg2/components/mybutton.dart';
import 'package:belajarflutter11pplg2/controllers/login_page_controller.dart';
import 'package:get/get.dart';

class LoginCloneFacebook extends StatelessWidget {
  LoginCloneFacebook({super.key});

  final LoginPageController controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101723),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              width: 76,
              height: 76,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.facebook,
                size: 76,
                color: Color(0xFF1877F2),
              ),
            ),
            const SizedBox(height: 40),

            Mytextfield(
              hint: "Username",
              controller: controller.txtusername,
              textColor: Colors.white,
              hintColor: const Color(0xFF8B98A5),
              fillColor: const Color(0xFF141D2B),
              borderColor: const Color(0xFF2A374A),
              borderRadius: 12,
            ),

            const SizedBox(height: 12),

            // Input Password
            Mytextfield(
              hint: "Password",
              controller: controller.txtpassword,
              isPassword: true,
              textColor: Colors.white,
              hintColor: const Color(0xFF8B98A5),
              fillColor: const Color(0xFF141D2B),
              borderColor: const Color(0xFF2A374A),
              borderRadius: 12,
              
            ),

            const SizedBox(height: 16),

            // Tombol Log In
            Obx(() => controller.isLoading.value ? Center(child: CircularProgressIndicator(),) :  
                Mybutton(
                    text: "Log In",
                    width: double.infinity,
                    height: 48,
                    onPressed: () {
                      controller.login();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0064E0),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
          ],
        ),
    );
  }
}
