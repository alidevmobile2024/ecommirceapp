import 'controller/add_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/core/utils/validation_functions.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';
import 'package:snackland/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends GetWidget<AddAddressController> {
  AddAddressScreen({Key? key}) : super(key: key);

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
                    text: "lbl_add_address".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Column(children: [
                      SizedBox(height: 29.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 16.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_country_or_region".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.countryController,
                                            hintText:
                                                "msg_enter_the_country".tr),
                                        SizedBox(height: 22.v),
                                        Text("lbl_first_name".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 13.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.firstNameController,
                                            hintText: "msg_enter_the_first".tr,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        SizedBox(height: 22.v),
                                        Text("lbl_last_name".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.lastNameController,
                                            hintText:
                                                "msg_enter_the_last_name".tr,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        SizedBox(height: 23.v),
                                        Text("lbl_street_address".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: controller
                                                .streetaddressController,
                                            hintText:
                                                "msg_enter_the_street".tr),
                                        SizedBox(height: 21.v),
                                        Text("msg_street_address_2".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 16.v),
                                        CustomTextFormField(
                                            controller: controller
                                                .streetaddressController1,
                                            hintText:
                                                "msg_enter_the_street2".tr),
                                        SizedBox(height: 22.v),
                                        Text("lbl_city".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.cityController,
                                            hintText: "lbl_enter_the_city".tr),
                                        SizedBox(height: 23.v),
                                        Text("msg_state_province_region".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: controller
                                                .oldpasswordoneController,
                                            hintText: "msg_enter_the_state".tr),
                                        SizedBox(height: 24.v),
                                        Text("lbl_zip_code".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.zipcodeController,
                                            hintText:
                                                "msg_enter_the_zip_code".tr,
                                            textInputType: TextInputType.number,
                                            validator: (value) {
                                              if (!isNumeric(value)) {
                                                return "Please enter valid number";
                                              }
                                              return null;
                                            }),
                                        SizedBox(height: 23.v),
                                        Text("lbl_phone_number".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: controller
                                                .phoneNumberController,
                                            hintText: "msg_enter_the_phone".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType: TextInputType.phone,
                                            validator: (value) {
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            })
                                      ]))))
                    ]))),
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

  /// Navigates to the addressScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addressScreen.
  onTapAddaddress() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }
}
