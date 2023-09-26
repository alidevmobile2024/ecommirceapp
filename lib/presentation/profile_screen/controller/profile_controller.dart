import 'package:snackland/core/app_export.dart';
import 'package:snackland/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/data/models/me/get_me_resp.dart';
import 'package:snackland/data/apiClient/api_client.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  GetMeResp getMeResp = GetMeResp();

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callFetchMe() async {
    try {
      getMeResp = await Get.find<ApiClient>().fetchMe(headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3NzgxOTg3MH0.uDqLLt9IUCaUjLkbw4y_7A6OGS6NX2irkXdJ3-2Ebbs',
      });
      _handleFetchMeSuccess();
    } on GetMeResp catch (e) {
      getMeResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleFetchMeSuccess() {
    profileModelObj.value.username.value = getMeResp.data!.username!.toString();
    profileModelObj.value.email.value = getMeResp.data!.email!.toString();
    profileModelObj.value.name.value = getMeResp.data!.name!.toString();
  }

  /// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/me] API
  ///
  /// It has [GetMeReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onFetchMeSuccess()` function.
  /// If the call fails, the function calls the `_onFetchMeError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    try {
      await callFetchMe();
      _onFetchMeSuccess();
    } on GetMeResp {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onFetchMeSuccess() {}
  void _onFetchMeError() {}
}
