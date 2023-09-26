import 'controller/register_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/core/utils/validation_functions.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';
import 'package:snackland/widgets/custom_icon_button.dart';
import 'package:snackland/widgets/custom_text_form_field.dart';
import 'package:snackland/data/models/registerDeviceAuth/post_register_device_auth_req.dart';
import 'package:snackland/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';
import 'package:snackland/core/constants/role.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class RegisterFormScreen extends GetWidget<RegisterFormController> {
  RegisterFormScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              padding: EdgeInsets.all(20.h),
                              decoration: IconButtonStyleHelper.fillPrimary,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          SizedBox(height: 16.v),
                          Text("msg_let_s_get_started".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 9.v),
                          Text("msg_create_an_new_account".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                              controller: controller.fullNameController,
                              hintText: "lbl_full_name".tr,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              },
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 8.v),
                          CustomTextFormField(
                              controller: controller.emailController,
                              hintText: "lbl_your_email".tr,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgMail)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              },
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 8.v),
                          CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 8.v),
                          CustomTextFormField(
                              controller: controller.passwordController1,
                              hintText: "lbl_password_again".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                              text: "lbl_sign_up".tr,
                              onTap: () {
                                onTapSignup();
                              }),
                          SizedBox(height: 20.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtHaveanaccount();
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_have_an_account2".tr,
                                        style: theme.textTheme.bodySmall),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: CustomTextStyles
                                            .labelLargePrimary_1)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// calls the [https://nodedemo.dhiwise.co/device/auth/register] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostRegisterDeviceAuthReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onOnTapSignUpSuccess()` function.
  /// If the call fails, the function calls the `_onOnTapSignUpError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapSignup() async {
    if (_formKey.currentState!.validate()) {
      PostRegisterDeviceAuthReq postRegisterDeviceAuthReq =
          PostRegisterDeviceAuthReq(
        username: controller.emailController.text,
        password: controller.passwordController.text,
        email: controller.emailController.text,
        name: controller.fullNameController.text,
        role: Role.user,
      );
      try {
        await controller.callRegisterDeviceAuth(
          postRegisterDeviceAuthReq.toJson(),
        );
        _onOnTapSignUpSuccess();
      } on PostRegisterDeviceAuthResp {
        _onOnTapSignUpError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the dashboardContainerScreen.
  /// While navigation passing id, as an argument to the
  /// dashboardContainerScreen
  void _onOnTapSignUpSuccess() {
    Get.offNamed(AppRoutes.dashboardContainerScreen, arguments: {
      NavigationArgs.id: controller.postRegisterDeviceAuthResp.data?.id
    });
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onOnTapSignUpError() {
    Fluttertoast.showToast(
        msg: controller.postRegisterDeviceAuthResp.message.toString() ?? '');
  }

  onTapTxtHaveanaccount() {
    // TODO: implement Actions
  }
}
