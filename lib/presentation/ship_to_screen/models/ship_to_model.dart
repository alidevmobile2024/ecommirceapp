import '../../../core/app_export.dart';
import 'ship_to_item_model.dart';

/// This class defines the variables used in the [ship_to_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShipToModel {
  Rx<List<ShipToItemModel>> shipToItemList =
      Rx(List.generate(3, (index) => ShipToItemModel()));
}
