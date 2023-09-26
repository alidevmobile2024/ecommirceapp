import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/buyingformate_item_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';
import 'package:snackland/widgets/custom_text_form_field.dart';

class FilterScreen extends GetWidget<FilterController> {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 42.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgCloseicon,
                    margin:
                        EdgeInsets.only(left: 18.h, top: 16.v, bottom: 16.v)),
                title: AppbarSubtitle(
                    text: "lbl_filter_search".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(children: [
                  SizedBox(height: 31.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_price_range".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: controller
                                                      .priceController,
                                                  margin: EdgeInsets.only(
                                                      right: 6.h),
                                                  hintText: "lbl_1_245".tr,
                                                  hintStyle: CustomTextStyles
                                                      .labelLargeBluegray300,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 16.h,
                                                          vertical: 15.v))),
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: controller
                                                      .priceController1,
                                                  margin: EdgeInsets.only(
                                                      left: 6.h),
                                                  hintText: "lbl_9_344".tr,
                                                  hintStyle: CustomTextStyles
                                                      .labelLargeBluegray300,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 16.h,
                                                          vertical: 15.v)))
                                        ]),
                                    SizedBox(height: 34.v),
                                    Text("lbl_condition".tr,
                                        style: theme.textTheme.titleSmall),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 13.v, right: 82.h),
                                        child: Row(children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 15.v),
                                              decoration: AppDecoration
                                                  .outlineBlue
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5),
                                              child: Text("lbl_new".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(left: 9.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 15.v),
                                              decoration: AppDecoration
                                                  .fillPrimary1
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5),
                                              child: Text("lbl_used".tr,
                                                  style: CustomTextStyles
                                                      .labelLargePrimary)),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 15.v),
                                              decoration: AppDecoration
                                                  .fillPrimary1
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5),
                                              child: Text(
                                                  "lbl_not_specified".tr,
                                                  style: CustomTextStyles
                                                      .labelLargePrimary))
                                        ])),
                                    SizedBox(height: 24.v),
                                    Text("lbl_buying_format".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    Obx(() => Wrap(
                                        runSpacing: 8.v,
                                        spacing: 8.h,
                                        children: List<Widget>.generate(
                                            controller
                                                .filterModelObj
                                                .value
                                                .buyingformateItemList
                                                .value
                                                .length, (index) {
                                          BuyingformateItemModel model =
                                              controller
                                                  .filterModelObj
                                                  .value
                                                  .buyingformateItemList
                                                  .value[index];
                                          return BuyingformateItemWidget(model);
                                        }))),
                                    SizedBox(height: 22.v),
                                    Text("lbl_item_location".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 13.v),
                                    Obx(() => Wrap(
                                        runSpacing: 8.v,
                                        spacing: 8.h,
                                        children: List<Widget>.generate(
                                            controller
                                                .filterModelObj
                                                .value
                                                .itemlocationItemList
                                                .value
                                                .length, (index) {
                                          ItemlocationItemModel model =
                                              controller
                                                  .filterModelObj
                                                  .value
                                                  .itemlocationItemList
                                                  .value[index];
                                          return ItemlocationItemWidget(model);
                                        }))),
                                    SizedBox(height: 25.v),
                                    Text("lbl_show_only".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 10.v),
                                    Obx(() => Wrap(
                                        runSpacing: 8.v,
                                        spacing: 8.h,
                                        children: List<Widget>.generate(
                                            controller
                                                .filterModelObj
                                                .value
                                                .showonlyItemList
                                                .value
                                                .length, (index) {
                                          ShowonlyItemModel model = controller
                                              .filterModelObj
                                              .value
                                              .showonlyItemList
                                              .value[index];
                                          return ShowonlyItemWidget(model);
                                        })))
                                  ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_apply".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapApply();
                })));
  }

  /// Navigates to the searchResultScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the searchResultScreen.
  onTapApply() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
