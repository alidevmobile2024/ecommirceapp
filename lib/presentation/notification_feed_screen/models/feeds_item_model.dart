import '../../../core/app_export.dart';

/// This class is used in the [feeds_item_widget] screen.
class FeedsItemModel {
  FeedsItemModel({
    this.newproduct,
    this.id,
  }) {
    newproduct = newproduct ?? Rx("New Product");
    id = id ?? Rx("");
  }

  Rx<String>? newproduct;

  Rx<String>? id;
}
