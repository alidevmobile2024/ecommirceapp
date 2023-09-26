import 'package:snackland/core/app_export.dart';
import 'package:snackland/presentation/write_review_fill_screen/models/write_review_fill_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WriteReviewFillScreen.
///
/// This class manages the state of the WriteReviewFillScreen, including the
/// current writeReviewFillModelObj
class WriteReviewFillController extends GetxController {
  TextEditingController addreviewoneController = TextEditingController();

  Rx<WriteReviewFillModel> writeReviewFillModelObj = WriteReviewFillModel().obs;

  @override
  void onClose() {
    super.onClose();
    addreviewoneController.dispose();
  }
}
