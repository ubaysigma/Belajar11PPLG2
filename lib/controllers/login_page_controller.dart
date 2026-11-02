import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginPageController extends GetxController{
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  
  var isLoading = false.obs;

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
          final data = jsonDecode(response.body);
          if(data['status'] == true)
          {
            Get.snackbar("Berhasil", "pesan");
          }else
          {
            Get.snackbar("Gagal", "pesan");
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