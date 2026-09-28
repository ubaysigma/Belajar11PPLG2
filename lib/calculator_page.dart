import 'package:belajarflutter11pplg2/components/mybutton.dart';
import 'package:belajarflutter11pplg2/components/mytextfield.dart';
import 'package:belajarflutter11pplg2/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(CalculatorController());
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();

  // Function pembuat tombol (function memanggil function)
  Widget tombol(String teks, void Function(String, String) aksi) {
    return Mybutton(
      text: teks,
      onPressed: () => aksi(txtangka1.text, txtangka2.text),
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 20),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(230, 3, 157, 218),
        foregroundColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("my kalkulator")),
      body: Column(
        children: [
          Mytextfield(
            hint: "input angka 1",
            txtcontroller: txtangka1,
            numericOnly: true,
          ),
          Mytextfield(
            hint: "input angka 2",
            txtcontroller: txtangka2,
            numericOnly: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tombol("Tambah", controller.tambah),
              tombol("Kurang", controller.kurang),
              tombol("Kali", controller.kali),
              tombol("Bagi", controller.bagi),
            ],
          ),
          Obx(() => Text("Hasil: ${controller.hasilhitung.value}")),
        ],
      ),
    );
  }
}