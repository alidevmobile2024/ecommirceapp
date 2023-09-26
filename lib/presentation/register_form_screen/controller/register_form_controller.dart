import 'package:snackland/core/app_export.dart';
import 'package:snackland/presentation/register_form_screen/models/register_form_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';
import 'package:snackland/data/apiClient/api_client.dart';

/// A controller class for the RegisterFormScreen.
///
/// This class manages the state of the RegisterFormScreen, including the
/// current registerFormModelObj
class RegisterFormController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  Rx<RegisterFormModel> registerFormModelObj = RegisterFormModel().obs;

  PostRegisterDeviceAuthResp postRegisterDeviceAuthResp =
      PostRegisterDeviceAuthResp();

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController1.dispose();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/register API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callRegisterDeviceAuth(Map req) async {
    try {
      postRegisterDeviceAuthResp =
          await Get.find<ApiClient>().registerDeviceAuth(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleRegisterDeviceAuthSuccess();
    } on PostRegisterDeviceAuthResp catch (e) {
      postRegisterDeviceAuthResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleRegisterDeviceAuthSuccess() {
    Get.find<PrefUtils>().setId(postRegisterDeviceAuthResp.data?.id ?? '');
  }
}
