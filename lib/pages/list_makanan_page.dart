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
        title: Text("List Makanan"),
      ),
      body: Container(
        margin:EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.datamakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.datamakanan[index];
            return InkWell(
              onTap: () {
                Get.toNamed(Routes.detailListPage, arguments: makanan);
              },
              child: ListTile(
                leading: ClipRRect( //ngebungkus Image.Network biar bisa kasih border radius
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    makanan.gambar,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  makanan.namaMakanan,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Rp ${makanan.harga}",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.green),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}