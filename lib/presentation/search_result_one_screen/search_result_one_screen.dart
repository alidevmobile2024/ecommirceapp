import 'controller/search_result_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image_1.dart';
import 'package:snackland/widgets/app_bar/appbar_searchview.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';
import 'package:snackland/widgets/custom_icon_button.dart';

class SearchResultOneScreen extends GetWidget<SearchResultOneController> {
  const SearchResultOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSearchview(
                    margin: EdgeInsets.only(left: 16.h),
                    hintText: "lbl_search_product".tr,
                    controller: controller.searchController),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgSort,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h)),
                  AppbarImage1(
                      svgPath: ImageConstant.imgFilter,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  Divider(),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 15.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                                opacity: 0.5,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 4.v),
                                    child: Text("lbl_0_result".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnPrimary))),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                                child: Text("lbl_man_shoes".tr,
                                    style: theme.textTheme.labelLarge)),
                            CustomImageView(
                                svgPath: ImageConstant.imgDownicon,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 8.h))
                          ])),
                  Spacer(),
                  CustomIconButton(
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      padding: EdgeInsets.all(28.h),
                      decoration:
                          IconButtonStyleHelper.outlineSecondaryContainer,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCloseOnprimarycontainer)),
                  SizedBox(height: 15.v),
                  Text("msg_product_not_found".tr,
                      style: CustomTextStyles.headlineSmallOnPrimary),
                  SizedBox(height: 11.v),
                  Text("msg_thank_you_for_shopping".tr,
                      style: theme.textTheme.bodySmall),
                  CustomElevatedButton(
                      text: "lbl_back_to_home".tr,
                      margin: EdgeInsets.all(16.h),
                      onTap: () {
                        onTapBacktohome();
                      })
                ]))));
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the dashboardContainerScreen.
  onTapBacktohome() {
    Get.toNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }
}
