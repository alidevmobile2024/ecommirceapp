import '../../../core/app_export.dart';
import 'favorite_item_model.dart';

/// This class defines the variables used in the [favorite_product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoriteProductModel {
  Rx<List<FavoriteItemModel>> favoriteItemList =
      Rx(List.generate(4, (index) => FavoriteItemModel()));
}
