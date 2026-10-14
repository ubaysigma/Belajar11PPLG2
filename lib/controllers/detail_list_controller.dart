import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/models/models_makanan.dart';

class DetailListController extends GetxController {
  late MakananModel makanan;


  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }
}