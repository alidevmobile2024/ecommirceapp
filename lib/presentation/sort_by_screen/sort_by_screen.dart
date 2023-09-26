import 'controller/sort_by_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';

class SortByScreen extends GetWidget<SortByController> {
  const SortByScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_sort_by".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  Text("lbl_best_match".tr,
                      style: CustomTextStyles.labelLargePrimary),
                  GestureDetector(
                      onTap: () {
                        onTapTxtTimeendingsoone();
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 17.v),
                          decoration: AppDecoration.fillBlue,
                          child: Text("msg_time_ending_soonest".tr,
                              style: theme.textTheme.labelLarge))),
                  Text("msg_time_newly_listed".tr,
                      style: theme.textTheme.labelLarge),
                  Text("msg_price_shipping".tr,
                      style: theme.textTheme.labelLarge),
                  Text("msg_price_shipping2".tr,
                      style: theme.textTheme.labelLarge),
                  SizedBox(height: 5.v),
                  Text("msg_distance_nearest".tr,
                      style: theme.textTheme.labelLarge)
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the offerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the offerScreen.
  onTapTxtTimeendingsoone() {
    Get.toNamed(
      AppRoutes.offerScreen,
    );
  }
}
