import 'package:belajarflutter11pplg2/models/makananmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListMakananController extends GetxController {
  var datamakanan = <MakananModels>[].obs;
  var isLoading = true.obs;

  // 1. Otomatis jalankan fooddata() saat controller pertama kali dipanggil
  @override
  void onInit() {
    super.onInit();
    fooddata();
  }

  Future<void> fooddata() async {
    try {
      isLoading.value = true;
      final response = await http.get(
        Uri.parse('https://6afa635c730c1d152f322272.mockapi.io/api/v1/food'),
      );

      if (response.statusCode == 200) {
        datamakanan.value = makananModelsFromJson(response.body);
      } else {
        Get.snackbar('Gagal', 'Error server: ${response.statusCode}');
      }
    } catch (e) {
      // 2. Tampilkan pesan error jika gagal koneksi / salah parsing
      Get.snackbar('Error', 'Gagal memuat data: $e');
    } finally {
      // 3. Wajib matikan loading baik saat berhasil maupun gagal
      isLoading.value = false;
    }
  }
}