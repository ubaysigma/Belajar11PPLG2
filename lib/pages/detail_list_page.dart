import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DetailListPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail List Makanan"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [            
            Image.network(Get.arguments["gambar"] ?? "https://via.placeholder.com/150",height: 200,width: 200,fit: BoxFit.cover,),
            const SizedBox(height: 15),
            Text("Nama Makanan : ${Get.arguments["namaMakanan"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Harga : ${Get.arguments["harga"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text("Kategori : ${Get.arguments["kategori"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text("Deskripsi : ${Get.arguments["deskripsi"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 120, 118, 118)),),
            Text("Rating : ${Get.arguments["rating"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 253, 179, 7)),),
          ],
        ),
      ),
    );
  }
}