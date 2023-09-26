import '../../../core/app_export.dart';

/// This class is used in the [flashsale_item_widget] screen.
class FlashsaleItemModel {
  FlashsaleItemModel({
    this.fsnikeairmax,
    this.id,
  }) {
    fsnikeairmax = fsnikeairmax ?? Rx("FS - Nike Air Max 270 React...");
    id = id ?? Rx("");
  }

  Rx<String>? fsnikeairmax;

  Rx<String>? id;
}
