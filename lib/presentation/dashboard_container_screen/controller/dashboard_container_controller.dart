import 'package:snackland/core/app_export.dart';
import 'package:snackland/presentation/dashboard_container_screen/models/dashboard_container_model.dart';

/// A controller class for the DashboardContainerScreen.
///
/// This class manages the state of the DashboardContainerScreen, including the
/// current dashboardContainerModelObj
class DashboardContainerController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  var token = Get.arguments[NavigationArgs.token];

  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;
}
