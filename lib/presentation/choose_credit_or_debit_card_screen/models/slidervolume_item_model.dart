import '../../../core/app_export.dart';

/// This class is used in the [slidervolume_item_widget] screen.
class SlidervolumeItemModel {
  SlidervolumeItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
