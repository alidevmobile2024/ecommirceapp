import 'controller/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';

class AddressScreen extends GetWidget<AddressController> {
  const AddressScreen({Key? key}) : super(key: key);

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
                    text: "lbl_address".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                child: Column(children: [
                  Container(
                      width: 343.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 22.v),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_priscekila".tr,
                                style: theme.textTheme.titleSmall),
                            Container(
                                width: 264.h,
                                margin: EdgeInsets.only(top: 19.v, right: 30.h),
                                child: Text("msg_3711_spring_hill".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!
                                        .copyWith(height: 1.80))),
                            SizedBox(height: 20.v),
                            Text("lbl_99_1234567890".tr,
                                style: theme.textTheme.bodySmall),
                            SizedBox(height: 19.v),
                            Row(children: [
                              Text("lbl_edit".tr,
                                  style: CustomTextStyles.titleSmallPrimary),
                              Padding(
                                  padding: EdgeInsets.only(left: 32.h),
                                  child: Text("lbl_delete".tr,
                                      style:
                                          CustomTextStyles.titleSmallPink300))
                            ]),
                            SizedBox(height: 3.v)
                          ])),
                  SizedBox(height: 18.v),
                  Container(
                      width: 343.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 22.v),
                      decoration: AppDecoration.outlineBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_ahmad_khaidir".tr,
                                style: theme.textTheme.titleSmall),
                            Container(
                                width: 264.h,
                                margin: EdgeInsets.only(top: 19.v, right: 30.h),
                                child: Text("msg_3711_spring_hill".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!
                                        .copyWith(height: 1.80))),
                            SizedBox(height: 20.v),
                            Text("lbl_99_1234567890".tr,
                                style: theme.textTheme.bodySmall),
                            SizedBox(height: 19.v),
                            Row(children: [
                              Text("lbl_edit".tr,
                                  style: CustomTextStyles.titleSmallPrimary),
                              Padding(
                                  padding: EdgeInsets.only(left: 32.h),
                                  child: Text("lbl_delete".tr,
                                      style:
                                          CustomTextStyles.titleSmallPink300))
                            ]),
                            SizedBox(height: 3.v)
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_add_address".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapAddaddress();
                })));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the addAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addAddressScreen.
  onTapAddaddress() {
    Get.toNamed(
      AppRoutes.addAddressScreen,
    );
  }
}
