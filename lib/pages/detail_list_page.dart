import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/controllers/detail_list_controller.dart';

class DetailListPage extends StatelessWidget {
  DetailListPage({super.key});

  final DetailListController controller = Get.put(DetailListController());

  @override
  Widget build(BuildContext context) {
    final makanan = controller.makanan;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail List Makanan"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect( // untuk menambahkan border radius pada gambar
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                makanan.gambar,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            
            const SizedBox(height: 20),
            Text(
              makanan.namaMakanan,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Rp ${makanan.harga}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                makanan.kategori,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 4),
                Text(
                  makanan.rating,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Deskripsi:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              makanan.deskripsi,
              style: const TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 100, 100, 100),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}