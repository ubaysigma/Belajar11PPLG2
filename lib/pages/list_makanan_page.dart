import 'package:flutter/material.dart';
import 'package:belajarflutter11pplg2/controllers/list_makanan_controller.dart';
import 'package:belajarflutter11pplg2/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        // 1. Wajib dibungkus Obx agar otomatis update saat data API masuk
        child: Obx(() {
          // 2. Tampilkan loading muter selama proses GET ke MockAPI berjalan
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          // 3. Tampilkan pesan jika API kosong / gagal dimuat
          if (controller.datamakanan.isEmpty) {
            return const Center(child: Text("Data makanan kosong"));
          }

          // 4. Tampilkan ListView jika data sudah siap (ditambah RefreshIndicator)
          return RefreshIndicator(
            onRefresh: controller.fooddata,
            child: ListView.builder(
              itemCount: controller.datamakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.datamakanan[index];
                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.detailListPage, arguments: makanan);
                  },
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        makanan.gambar,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        // Penahan agar tidak error merah jika URL gambar rusak
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 60,
                          height: 60,
                          color: Colors.grey[300],
                          child: const Icon(Icons.broken_image, color: Colors.grey),
                        ),
                      ),
                    ),
                    title: Text(
                      makanan.name,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Rp ${makanan.harga}",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}