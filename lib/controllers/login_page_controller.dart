import 'package:belajarflutter11pplg2/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/models/loginmodel.dart';
import 'package:http/http.dart' as http;

class LoginPageController extends GetxController{
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  
  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  void login () async
  {
    if(txtusername.text.toString().isEmpty || txtpassword.text.toString().isEmpty)
    {
      Get.snackbar("ERROR", "Cek lagi mungkin salah isi");
    }else{
      try
      {
        isLoading.value = true;
        final url = Uri.parse('https://mediadwi.com/api/latihan/login');
        final response = await http.post(url, body: {
          "username" : txtusername.text.toString(),
          "password" : txtpassword.text.toString()
        });

        isLoading.value = false;
        if(response.statusCode == 200)
        {
          loginModel.value = loginModelFromJson(response.body);

          if(loginModel.value?.status ==true)
          {
            Get.snackbar("PESAN", loginModel.value?.message ?? "BERHASIL");
            Get.offNamed(Routes.main_menu);
          }else
          {
            Get.snackbar("PESAN", loginModel.value?.message ?? "GAGAL");
          }
        }else
        {
          Get.snackbar("Gagal", "Cek Internet Connnection");
        }

      }catch(e)
      {
          Get.snackbar("Gagal", e.toString());
      }
    }
  }
}