import 'controller/write_review_fill_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';
import 'package:snackland/widgets/custom_rating_bar.dart';
import 'package:snackland/widgets/custom_text_form_field.dart';

class WriteReviewFillScreen extends GetWidget<WriteReviewFillController> {
  const WriteReviewFillScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_write_review".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 343.h,
                          child: Text("msg_please_write_overall".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 13.v),
                      CustomRatingBar(initialRating: 4, itemSize: 32),
                      SizedBox(height: 22.v),
                      Text("msg_write_your_review".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 13.v),
                      CustomTextFormField(
                          controller: controller.addreviewoneController,
                          hintText: "lbl_add_review".tr,
                          hintStyle: CustomTextStyles.labelLargeBluegray300,
                          textInputAction: TextInputAction.done,
                          maxLines: 8,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 17.v)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_write_review".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v),
                onTap: () {
                  onTapWritereview();
                })));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the reviewProductScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the reviewProductScreen.
  onTapWritereview() {
    Get.offNamed(
      AppRoutes.reviewProductScreen,
    );
  }
}
