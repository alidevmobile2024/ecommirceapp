import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'controller/ship_to_controller.dart';
import 'models/ship_to_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_image_1.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';

class ShipToScreen extends GetWidget<ShipToController> {
  const ShipToScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 13.v, bottom: 14.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_ship_to".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgPlusicon,
                      margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v),
                      onTap: () {
                        onTapPlusiconone();
                      })
                ]),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 4.v, right: 16.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 22.v);
                    },
                    itemCount: controller
                        .shipToModelObj.value.shipToItemList.value.length,
                    itemBuilder: (context, index) {
                      ShipToItemModel model = controller
                          .shipToModelObj.value.shipToItemList.value[index];
                      return ShipToItemWidget(model);
                    }))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapNext();
                })));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the addressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addressScreen.
  onTapPlusiconone() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the paymentMethodScreen.
  onTapNext() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
