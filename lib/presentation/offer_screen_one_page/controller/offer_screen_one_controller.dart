import 'package:snackland/core/app_export.dart';
import 'package:snackland/presentation/offer_screen_one_page/models/offer_screen_one_model.dart';

/// A controller class for the OfferScreenOnePage.
///
/// This class manages the state of the OfferScreenOnePage, including the
/// current offerScreenOneModelObj
class OfferScreenOneController extends GetxController {
  OfferScreenOneController(this.offerScreenOneModelObj);

  Rx<OfferScreenOneModel> offerScreenOneModelObj;
}
