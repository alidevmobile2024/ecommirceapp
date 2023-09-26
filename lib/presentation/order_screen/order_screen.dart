import '../order_screen/widgets/order_item_widget.dart';
import 'controller/order_controller.dart';
import 'models/order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';

class OrderScreen extends GetWidget<OrderController> {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_order".tr, margin: EdgeInsets.only(left: 12.h))),
            body: Padding(
                padding: EdgeInsets.only(left: 15.h, top: 19.v, right: 15.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.v);
                    },
                    itemCount: controller
                        .orderModelObj.value.orderItemList.value.length,
                    itemBuilder: (context, index) {
                      OrderItemModel model = controller
                          .orderModelObj.value.orderItemList.value[index];
                      return OrderItemWidget(model, onTapOrder: () {
                        onTapOrder();
                      });
                    })))));
  }

  /// Navigates to the orderDetailsScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the orderDetailsScreen.
  onTapOrder() {
    Get.toNamed(AppRoutes.orderDetailsScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
