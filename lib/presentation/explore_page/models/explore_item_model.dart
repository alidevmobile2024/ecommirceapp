import '../../../core/app_export.dart';

/// This class is used in the [explore_item_widget] screen.
class ExploreItemModel {
  ExploreItemModel({
    this.manshirt,
    this.id,
  }) {
    manshirt = manshirt ?? Rx("Man Shirt");
    id = id ?? Rx("");
  }

  Rx<String>? manshirt;

  Rx<String>? id;
}
