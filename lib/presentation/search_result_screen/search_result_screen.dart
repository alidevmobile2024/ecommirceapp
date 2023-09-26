import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image_1.dart';
import 'package:snackland/widgets/app_bar/appbar_searchview_2.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSearchview2(
                    margin: EdgeInsets.only(left: 16.h),
                    hintText: "lbl_nike_air_max".tr,
                    controller: controller.searchController),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgSort,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
                      onTap: () {
                        onTapSortone();
                      }),
                  AppbarImage1(
                      svgPath: ImageConstant.imgFilter,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
                      onTap: () {
                        onTapFilterone();
                      })
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
                                    child: Text("lbl_145_result".tr,
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
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, top: 16.v, right: 16.h),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 283.v,
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 13.h,
                                      crossAxisSpacing: 13.h),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.searchResultModelObj.value
                                  .searchResultItemList.value.length,
                              itemBuilder: (context, index) {
                                SearchResultItemModel model = controller
                                    .searchResultModelObj
                                    .value
                                    .searchResultItemList
                                    .value[index];
                                return SearchResultItemWidget(model,
                                    onTapProduct: () {
                                  onTapProduct();
                                });
                              }))))
                ]))));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the productDetailScreen.
  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  /// Navigates to the sortByScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the sortByScreen.
  onTapSortone() {
    Get.toNamed(
      AppRoutes.sortByScreen,
    );
  }

  /// Navigates to the filterScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the filterScreen.
  onTapFilterone() {
    Get.toNamed(
      AppRoutes.filterScreen,
    );
  }
}
