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
          itemBuilder: (context,index) {
            final makanan = controller.datamakanan[index];
            final harga = controller.datamakanan[index];
            final deskripsi = controller.datamakanan[index];
            final gambar = controller.datamakanan[index];
            final kategori = controller.datamakanan[index];
            final rating = controller.datamakanan[index];
            return InkWell(
              onTap: (){
                Get.toNamed(Routes.detailListPage,arguments: {
                  "namaMakanan":makanan.namaMakanan,
                  "harga":makanan.harga,
                  "deskripsi":makanan.deskripsi,
                  "gambar":makanan.gambar,
                  "kategori":makanan.kategori,
                  "rating":makanan.rating,
                });  
              },
              child: ListTile(
                title: Text(makanan.namaMakanan,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle: Text(makanan.harga,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
        }),
      ),
    );
  }
}