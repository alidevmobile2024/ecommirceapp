import '../../../core/app_export.dart';

/// This class is used in the [sliderofferbann_item_widget] screen.
class SliderofferbannItemModel {
  SliderofferbannItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
