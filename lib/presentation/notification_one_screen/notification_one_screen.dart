import 'controller/notification_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';

class NotificationOneScreen extends GetWidget<NotificationOneController> {
  const NotificationOneScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_notification".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  CustomElevatedButton(
                      text: "lbl_offer".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgOffer)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onTap: () {
                        onTapOffer();
                      }),
                  CustomElevatedButton(
                      text: "lbl_feed".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgListIcon)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onTap: () {
                        onTapFeed();
                      }),
                  SizedBox(height: 5.v),
                  CustomElevatedButton(
                      text: "lbl_acivity".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgNotificationIconPrimary)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onTap: () {
                        onTapAcivity();
                      })
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the notificationOfferScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationOfferScreen.
  onTapOffer() {
    Get.toNamed(
      AppRoutes.notificationOfferScreen,
    );
  }

  /// Navigates to the notificationFeedScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationFeedScreen.
  onTapFeed() {
    Get.toNamed(
      AppRoutes.notificationFeedScreen,
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationScreen.
  onTapAcivity() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
