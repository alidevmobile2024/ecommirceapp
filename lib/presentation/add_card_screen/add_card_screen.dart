import 'controller/add_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/core/utils/validation_functions.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';
import 'package:snackland/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardScreen extends GetWidget<AddCardController> {
  AddCardScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                    text: "lbl_add_card".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_card_number".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: controller.cardNumberController,
                              hintText: "msg_enter_card_number".tr,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          SizedBox(height: 24.v),
                          Text("lbl_expiration_date".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                              controller: controller.expirationDateController,
                              hintText: "lbl_expiration_date".tr,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 15.v)),
                          SizedBox(height: 29.v),
                          Text("lbl_security_code".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                              controller: controller.securityCodeController,
                              hintText: "lbl_security_code".tr,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 15.v)),
                          SizedBox(height: 23.v),
                          Text("lbl_card_holder2".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: controller.cardNumberController1,
                              hintText: "msg_enter_card_number".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          SizedBox(height: 5.v)
                        ]))),
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

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the creditCardAndDebitScreen.
  onTapAddcard() {
    Get.toNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }
}
