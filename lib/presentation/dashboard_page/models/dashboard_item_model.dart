import '../../../core/app_export.dart';

/// This class is used in the [dashboard_item_widget] screen.
class DashboardItemModel {
  DashboardItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
