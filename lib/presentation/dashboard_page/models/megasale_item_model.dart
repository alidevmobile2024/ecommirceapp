import '../../../core/app_export.dart';

/// This class is used in the [megasale_item_widget] screen.
class MegasaleItemModel {
  MegasaleItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
