import 'package:get/get.dart';
import 'package:belajarflutter11pplg2/models/models_makanan.dart';
import 'package:belajarflutter11pplg2/models/makananmodel.dart';
class DetailListController extends GetxController {
  late MakananModels makanan;


  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModels;
  }
}