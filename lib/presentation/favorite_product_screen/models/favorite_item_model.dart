import '../../../core/app_export.dart';

/// This class is used in the [favorite_item_widget] screen.
class FavoriteItemModel {
  FavoriteItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
