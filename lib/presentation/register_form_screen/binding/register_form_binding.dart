import '../controller/register_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterFormScreen.
///
/// This class ensures that the RegisterFormController is created when the
/// RegisterFormScreen is first loaded.
class RegisterFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFormController());
  }
}
