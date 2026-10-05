import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  // Observable fields populated from registration form arguments
  final RxString namalengkap = ''.obs;
  final RxString email = ''.obs;
  final RxString jeniskelamin = ''.obs;
  final RxString nowa = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // Read arguments passed via Get.toNamed(...)
    final args = Get.arguments;
    if (args != null && args is Map) {
      namalengkap.value = args['namalengkap'] ?? '';
      email.value = args['email'] ?? '';
      jeniskelamin.value = args['jeniskelamin'] ?? '';
      nowa.value = args['nowa'] ?? '';
    }
  }
}