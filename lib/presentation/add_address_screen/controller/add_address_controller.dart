import 'package:snackland/core/app_export.dart';
import 'package:snackland/presentation/add_address_screen/models/add_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddAddressScreen.
///
/// This class manages the state of the AddAddressScreen, including the
/// current addAddressModelObj
class AddAddressController extends GetxController {
  TextEditingController countryController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController streetaddressController = TextEditingController();

  TextEditingController streetaddressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController oldpasswordoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<AddAddressModel> addAddressModelObj = AddAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    countryController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    streetaddressController.dispose();
    streetaddressController1.dispose();
    cityController.dispose();
    oldpasswordoneController.dispose();
    zipcodeController.dispose();
    phoneNumberController.dispose();
  }
}
