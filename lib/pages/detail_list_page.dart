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
        title: Text("Detail List Makanan"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(//ngebungkus Image.Network biar bisa kasih border radius
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  makanan.gambar,
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                makanan.namaMakanan,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp ${makanan.harga}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  makanan.kategori,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: 4),
                  Text(
                    makanan.rating,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                "Deskripsi:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                makanan.deskripsi,
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 100, 100, 100),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}