import 'package:belajarflutter11pplg2/components/mytextfield.dart';
import 'package:belajarflutter11pplg2/components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtnamalengkap = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController txtnowa = TextEditingController();

    final List<String> listGender = ['Laki-laki', 'Perempuan'];
    final RxnString jenisKelamin = RxnString(); // null = belum dipilih

    return Scaffold(
      appBar: AppBar(title: Text("But Why? fih Registration Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Mytextfield(hint: "nama lengkap", txtcontroller: txtnamalengkap, numericOnly: false),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Mytextfield(hint: "email", txtcontroller: emailcontroller, numericOnly: false),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Mytextfield(hint: "No WhatsApp", txtcontroller: txtnowa, numericOnly: true),
          ),

          // Dropdown jenis kelamin
          Container(
            margin: EdgeInsets.all(20),
            child: Obx(() => DropdownButtonFormField<String>(
                  value: jenisKelamin.value,
                  isExpanded: true,
                  decoration: const InputDecoration(
                    labelText: 'Jenis Kelamin',
                    border: OutlineInputBorder(),
                  ),
                  hint: const Text('Pilih jenis kelamin'),
                  items: listGender
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (v) => jenisKelamin.value = v,
                )),
          ),

          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            child: Mybutton(
              
              text: "Register",
              onPressed: () {
                if (jenisKelamin.value == null) {
                  Get.snackbar("Peringatan", "Jenis kelamin belum dipilih");
                  return;
                }
                Get.toNamed(Routes.confirm_registraion, arguments: {
                  "namalengkap": txtnamalengkap.text,
                  "email": emailcontroller.text,
                  "jeniskelamin": jenisKelamin.value,
                  "nowa": txtnowa.text,
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(230, 255, 116, 2),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}