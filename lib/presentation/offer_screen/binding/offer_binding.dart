import '../controller/offer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OfferScreen.
///
/// This class ensures that the OfferController is created when the
/// OfferScreen is first loaded.
class OfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfferController());
  }
}
