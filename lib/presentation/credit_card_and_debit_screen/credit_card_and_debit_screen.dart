import 'controller/credit_card_and_debit_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';

class CreditCardAndDebitScreen extends GetWidget<CreditCardAndDebitController> {
  const CreditCardAndDebitScreen({Key? key}) : super(key: key);

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
                    text: "msg_credit_card_and".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
                child: Column(children: [
                  GestureDetector(
                      onTap: () {
                        onTapCreditcard();
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.h, vertical: 24.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: 22.v,
                                    width: 36.h,
                                    margin: EdgeInsets.only(left: 3.h)),
                                SizedBox(height: 30.v),
                                Text("msg_6326_9124".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 17.v),
                                Row(children: [
                                  Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("lbl_card_holder".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimaryContainer10))),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 37.h),
                                          child: Text("lbl_card_save".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimaryContainer10)))
                                ]),
                                SizedBox(height: 1.v),
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("lbl_dominic_ovo".tr,
                                          style: CustomTextStyles
                                              .labelMediumOnPrimaryContainer)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 41.h),
                                      child: Text("lbl_06_24".tr,
                                          style: CustomTextStyles
                                              .labelMediumOnPrimaryContainer))
                                ])
                              ]))),
                  SizedBox(height: 14.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 21.h, vertical: 24.v),
                      decoration: AppDecoration.fillIndigoA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVolume,
                                height: 22.v,
                                width: 36.h,
                                margin: EdgeInsets.only(left: 3.h)),
                            SizedBox(height: 30.v),
                            Text("msg_6326_9124".tr,
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 17.v),
                            Row(children: [
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text("lbl_card_holder".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer10))),
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 37.h),
                                      child: Text("lbl_card_save".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer10)))
                            ]),
                            SizedBox(height: 1.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("lbl_dominic_ovo".tr,
                                      style: CustomTextStyles
                                          .labelMediumOnPrimaryContainer)),
                              Padding(
                                  padding: EdgeInsets.only(left: 41.h),
                                  child: Text("lbl_06_24".tr,
                                      style: CustomTextStyles
                                          .labelMediumOnPrimaryContainer))
                            ])
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_add_card".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapAddcard();
                })));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the addCardScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addCardScreen.
  onTapAddcard() {
    Get.toNamed(
      AppRoutes.addCardScreen,
    );
  }

  /// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the lailyfaFebrinaCardScreen.
  onTapCreditcard() {
    Get.toNamed(
      AppRoutes.lailyfaFebrinaCardScreen,
    );
  }
}
