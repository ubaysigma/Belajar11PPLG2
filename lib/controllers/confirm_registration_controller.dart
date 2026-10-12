import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  String namalengkap = '';
  String email = '';
  String jeniskelamin = '';
  String nowa = '';

  @override
  void onInit() {
    super.onInit();
    // Read arguments passed via Get.toNamed(...)
    final arguments = Get.arguments;
    namalengkap = arguments['namalengkap'];
    email = arguments['email'];
    jeniskelamin = arguments['jeniskelamin'];
    nowa = arguments['nowa'];
    
  }
}