import '../../../core/app_export.dart';

/// This class is used in the [order_item_widget] screen.
class OrderItemModel {
  OrderItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
