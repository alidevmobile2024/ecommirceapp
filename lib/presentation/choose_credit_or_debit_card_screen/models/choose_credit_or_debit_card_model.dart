import '../../../core/app_export.dart';
import 'slidervolume_item_model.dart';

/// This class defines the variables used in the [choose_credit_or_debit_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseCreditOrDebitCardModel {
  Rx<List<SlidervolumeItemModel>> slidervolumeItemList =
      Rx(List.generate(1, (index) => SlidervolumeItemModel()));
}
