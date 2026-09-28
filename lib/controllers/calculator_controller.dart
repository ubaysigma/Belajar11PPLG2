import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var hasilhitung = 0.0.obs; // obs digunakan untuk update ke ui page

  // Nama tetap "kosong", isinya sama seperti punyamu
  List<double>? kosong(String teks1, String teks2) {
    double? angka1 = double.tryParse(teks1);
    double? angka2 = double.tryParse(teks2);

    if (angka1 == null || angka2 == null) {
      Get.snackbar("WARNING", "angka1/2 tidak boleh kosong");
      return null;
    }
    return [angka1, angka2];
  }

  void tambah(String teks1, String teks2) {
    var angka = kosong(teks1, teks2); // 1. cek dulu
    if (angka == null) return;        // 2. berhenti kalau kosong

    double hasiltambah = angka[0] + angka[1]; // 3. baru hitung
    hasilhitung.value = hasiltambah;
    Get.snackbar("hasil", "hasil penjumlahan adalah $hasiltambah");
  }

  void kurang(String teks1, String teks2) {
    var angka = kosong(teks1, teks2);
    if (angka == null) return;

    double hasilkurang = angka[0] - angka[1];
    hasilhitung.value = hasilkurang;
    Get.snackbar("hasil", "hasil pengurangan adalah $hasilkurang");
  }

  void kali(String teks1, String teks2) {
    var angka = kosong(teks1, teks2);
    if (angka == null) return;

    double hasilkali = angka[0] * angka[1];
    hasilhitung.value = hasilkali;
    Get.snackbar("hasil", "hasil perkalian adalah $hasilkali");
  }

  void bagi(String teks1, String teks2) {
    var angka = kosong(teks1, teks2);
    if (angka == null) return;

    if (angka[1] == 0) {
      Get.snackbar("WARNING", "Tidak boleh 0");
      return;
    }

    double hasilbagi = angka[0] / angka[1];
    hasilhitung.value = hasilbagi;
    Get.snackbar("hasil", "hasil pembagian adalah $hasilbagi");
  }
}