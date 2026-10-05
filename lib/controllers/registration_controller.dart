import 'package:get/get.dart';

class RegistrationController extends GetxController{
  late String username;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    username = arguments['username'];
  }
}