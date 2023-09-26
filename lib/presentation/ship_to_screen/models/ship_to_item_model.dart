import '../../../core/app_export.dart';

/// This class is used in the [ship_to_item_widget] screen.
class ShipToItemModel {
  ShipToItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
