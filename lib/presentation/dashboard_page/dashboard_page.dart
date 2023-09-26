import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/sliderofferbann_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/megasale_item_model.dart';
import 'models/sliderofferbann_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_image_1.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 48.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgSearch,
                    margin:
                        EdgeInsets.only(left: 32.h, top: 20.v, bottom: 20.v)),
                title: AppbarSubtitle1(
                    text: "lbl_search_product".tr,
                    margin: EdgeInsets.only(left: 8.h),
                    onTap: () {
                      onTapSearchproduct();
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgDownload,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
                      onTap: () {
                        onTapDownloadone();
                      }),
                  Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgNotificationicon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                            onTap: () {
                              onTapImgNotificationico();
                            }),
                        CustomImageView(
                            svgPath: ImageConstant.imgClosePink300,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                                left: 14.h, right: 2.h, bottom: 16.v))
                      ]))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: Obx(() => CarouselSlider.builder(
                                      options: CarouselOptions(
                                          height: 206.v,
                                          initialPage: 0,
                                          autoPlay: true,
                                          viewportFraction: 1.0,
                                          enableInfiniteScroll: false,
                                          scrollDirection: Axis.horizontal,
                                          onPageChanged: (index, reason) {
                                            controller.sliderIndex.value =
                                                index;
                                          }),
                                      itemCount: controller
                                          .dashboardModelObj
                                          .value
                                          .sliderofferbannItemList
                                          .value
                                          .length,
                                      itemBuilder: (context, index, realIndex) {
                                        SliderofferbannItemModel model =
                                            controller
                                                .dashboardModelObj
                                                .value
                                                .sliderofferbannItemList
                                                .value[index];
                                        return SliderofferbannItemWidget(model);
                                      }))),
                              SizedBox(height: 16.v),
                              Obx(() => SizedBox(
                                  height: 8.v,
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: controller.sliderIndex.value,
                                      count: controller.dashboardModelObj.value
                                          .sliderofferbannItemList.value.length,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 8,
                                          activeDotColor:
                                              theme.colorScheme.primary,
                                          dotColor: appTheme.blue50,
                                          dotHeight: 8.v,
                                          dotWidth: 8.h)))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 25.v, right: 16.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_category".tr,
                                            style: theme.textTheme.titleSmall),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtMorecategorylin();
                                            },
                                            child: Text("lbl_more_category".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary))
                                      ])),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 108.v,
                                      child: Obx(() => ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 12.h);
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .categoriesItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            CategoriesItemModel model =
                                                controller
                                                    .dashboardModelObj
                                                    .value
                                                    .categoriesItemList
                                                    .value[index];
                                            return CategoriesItemWidget(model);
                                          })))),
                              GestureDetector(
                                  onTap: () {
                                    onTapFlashsaleheader();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 23.v, right: 16.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_flash_sale".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            Text("lbl_see_more".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]))),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 238.v,
                                      child: Obx(() => ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 16.h);
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .flashsaleItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            FlashsaleItemModel model =
                                                controller
                                                    .dashboardModelObj
                                                    .value
                                                    .flashsaleItemList
                                                    .value[index];
                                            return FlashsaleItemWidget(model,
                                                onTapProduct: () {
                                              onTapProduct();
                                            });
                                          })))),
                              GestureDetector(
                                  onTap: () {
                                    onTapMegasaleheader();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 23.v, right: 16.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("lbl_mega_sale".tr,
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Text("lbl_see_more".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]))),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 238.v,
                                      child: Obx(() => ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 16.h);
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .megasaleItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            MegasaleItemModel model = controller
                                                .dashboardModelObj
                                                .value
                                                .megasaleItemList
                                                .value[index];
                                            return MegasaleItemWidget(model,
                                                onTapProduct: () {
                                              onTapProduct();
                                            });
                                          })))),
                              SizedBox(height: 29.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecomendedproduct,
                                  height: 206.v,
                                  width: 343.h,
                                  radius: BorderRadius.circular(5.h)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 16.v, right: 16.h),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent: 283.v,
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 13.h,
                                              crossAxisSpacing: 13.h),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.dashboardModelObj
                                          .value.dashboardItemList.value.length,
                                      itemBuilder: (context, index) {
                                        DashboardItemModel model = controller
                                            .dashboardModelObj
                                            .value
                                            .dashboardItemList
                                            .value[index];
                                        return DashboardItemWidget(model,
                                            onTapProduct: () {
                                          onTapProduct();
                                        });
                                      })))
                            ]))))));
  }

  /// Navigates to the searchScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the searchScreen.
  onTapSearchproduct() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  /// Navigates to the favoriteProductScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the favoriteProductScreen.
  onTapDownloadone() {
    Get.toNamed(AppRoutes.favoriteProductScreen);
  }

  /// Navigates to the notificationOneScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationOneScreen.
  onTapImgNotificationico() {
    Get.toNamed(AppRoutes.notificationOneScreen);
  }

  /// Navigates to the listCategoryScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the listCategoryScreen.
  onTapTxtMorecategorylin() {
    Get.toNamed(AppRoutes.listCategoryScreen);
  }

  /// Navigates to the offerScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the offerScreen.
  onTapFlashsaleheader() {
    Get.toNamed(AppRoutes.offerScreen);
  }

  /// Navigates to the offerScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the offerScreen.
  onTapMegasaleheader() {
    Get.toNamed(AppRoutes.offerScreen);
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the productDetailScreen.
  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
    Get.toNamed(AppRoutes.productDetailScreen);
    Get.toNamed(
      AppRoutes.productDetailScreen,
    );
  }
}
