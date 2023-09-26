import 'controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

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
                    text: "lbl_activity".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 94.v),
                                onTap: () {
                                  onTapImgArrowleftthree();
                                }),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_transaction_nike".tr,
                                              style:
                                                  theme.textTheme.titleSmall),
                                          SizedBox(height: 11.v),
                                          SizedBox(
                                              width: 305.h,
                                              child: Text(
                                                  "msg_culpa_cillum_consectetur"
                                                      .tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(height: 1.80))),
                                          SizedBox(height: 9.v),
                                          Text("msg_april_30_2014_1_01".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary10)
                                        ])))
                          ])),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 93.v)),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 291.h,
                                              margin:
                                                  EdgeInsets.only(right: 13.h),
                                              child: Text(
                                                  "msg_transaction_nike2".tr,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.titleSmall!
                                                      .copyWith(height: 1.50))),
                                          SizedBox(height: 11.v),
                                          SizedBox(
                                              width: 305.h,
                                              child: Text(
                                                  "msg_culpa_cillum_consectetur2"
                                                      .tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(height: 1.80))),
                                          SizedBox(height: 9.v),
                                          Text("msg_april_30_2014_1_01".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary10)
                                        ])))
                          ])),
                  SizedBox(height: 5.v),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 94.v)),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_transaction_nike3".tr,
                                              style:
                                                  theme.textTheme.titleSmall),
                                          SizedBox(height: 11.v),
                                          SizedBox(
                                              width: 305.h,
                                              child: Text(
                                                  "msg_culpa_cillum_consectetur"
                                                      .tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(height: 1.80))),
                                          SizedBox(height: 9.v),
                                          Text("msg_april_30_2014_1_01".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary10)
                                        ])))
                          ]))
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleftthree() {
    Get.back();
  }
}
