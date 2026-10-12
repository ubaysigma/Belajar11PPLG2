import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/models/models_makanan.dart';

class ListMakananController extends GetxController {

  List<MakananModel> datamakanan = [
    MakananModel(namaMakanan: "Nasgor Goreng",harga: "15.000",deskripsi: "Nasi goreng dengan bumbu spesial",gambar: "https://takestwoeggs.com/wp-content/uploads/2025/03/Overhead-plate-Nasi-Goreng-Indonesian-Fried-Rice.jpg",rating: "4.5",kategori: "Makanan Berat"),
    MakananModel(namaMakanan: "Mie Goreng",harga: "12.000",deskripsi: "Mie goreng dengan bumbu spesial",gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw0ymqaAMuXNqJEszBXEsORok3KByV8zC7qiwOe99DJw&s=10",rating: "4.0",kategori: "Makanan Berat"),
    MakananModel(namaMakanan: "Ayam Goreng",harga: "20.000",deskripsi: "Ayam goreng dengan bumbu spesial",gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf6T8S6km-EUt_x1U_o-uVLU0ZZOsarPwC-CRn8QIa-w&s=10",rating: "4.8",kategori: "Makanan Berat"),
    MakananModel(namaMakanan: "Sate Ayam",harga: "18.000",deskripsi: "Sate ayam dengan bumbu spesial",gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlPjDgnl93pX-fDj8QqTH4GBR94YHI800YcMqywy_Vpg&s=10",rating: "4.2",kategori: "Makanan Berat"),
    MakananModel(namaMakanan: "Bakso",harga: "15.000",deskripsi: "Bakso dengan bumbu spesial",gambar: "https://asset.tribunnews.com/PdNdZ8WFnhSh8g0l5t0cPLGF478=/1200x675/filters:upscale():quality(30):format(webp):focal(0.5x0.5:0.5x0.5)/tribunnews/foto/bank/originals/bakso-sapi-kuah-1.jpg",rating: "4.2",kategori: "Makanan Berat"),
    MakananModel(namaMakanan: "Soto Ayam",harga: "17.000",deskripsi: "Soto ayam dengan bumbu spesial",gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2G1AUFghxL7kyvpunKqSgPOEduEaB47XQ1fnRvBXf0A&s=10",rating: "4.3",kategori: "Makanan Berat"),
  ];
}