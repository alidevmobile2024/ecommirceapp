import '../../../core/app_export.dart';
import 'offer_screen_item_model.dart';

/// This class defines the variables used in the [offer_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OfferModel {
  Rx<List<OfferScreenItemModel>> offerScreenItemList =
      Rx(List.generate(4, (index) => OfferScreenItemModel()));
}
