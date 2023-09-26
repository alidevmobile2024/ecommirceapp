import 'package:snackland/core/app_export.dart';
import 'package:snackland/presentation/offer_screen/models/offer_model.dart';

/// A controller class for the OfferScreen.
///
/// This class manages the state of the OfferScreen, including the
/// current offerModelObj
class OfferController extends GetxController {
  Rx<OfferModel> offerModelObj = OfferModel().obs;
}
