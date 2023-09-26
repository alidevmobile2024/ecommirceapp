import '../../../core/app_export.dart';
import 'order_item_model.dart';

/// This class defines the variables used in the [order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderModel {
  Rx<List<OrderItemModel>> orderItemList =
      Rx(List.generate(3, (index) => OrderItemModel()));
}
