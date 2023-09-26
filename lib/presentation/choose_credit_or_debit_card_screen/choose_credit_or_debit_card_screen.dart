import '../choose_credit_or_debit_card_screen/widgets/slidervolume_item_widget.dart';
import 'controller/choose_credit_or_debit_card_controller.dart';
import 'models/slidervolume_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_image_1.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';
import 'package:snackland/widgets/custom_elevated_button.dart';

class ChooseCreditOrDebitCardScreen
    extends GetWidget<ChooseCreditOrDebitCardController> {
  const ChooseCreditOrDebitCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_choose_card".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgPlusicon,
                      margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
                      onTap: () {
                        onTapPlusiconone();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                child: Column(children: [
                  Obx(() => CarouselSlider.builder(
                      options: CarouselOptions(
                          height: 190.v,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.sliderIndex.value = index;
                          }),
                      itemCount: controller.chooseCreditOrDebitCardModelObj
                          .value.slidervolumeItemList.value.length,
                      itemBuilder: (context, index, realIndex) {
                        SlidervolumeItemModel model = controller
                            .chooseCreditOrDebitCardModelObj
                            .value
                            .slidervolumeItemList
                            .value[index];
                        return SlidervolumeItemWidget(model);
                      })),
                  SizedBox(height: 16.v),
                  Obx(() => SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: controller.sliderIndex.value,
                          count: controller.chooseCreditOrDebitCardModelObj
                              .value.slidervolumeItemList.value.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blue50,
                              dotHeight: 8.v,
                              dotWidth: 8.h)))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_pay_766_86".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapPay76686();
                })));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the addPaymentScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addPaymentScreen.
  onTapPlusiconone() {
    Get.toNamed(
      AppRoutes.addPaymentScreen,
    );
  }

  /// Navigates to the successScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the successScreen.
  onTapPay76686() {
    Get.toNamed(
      AppRoutes.successScreen,
    );
  }
}
