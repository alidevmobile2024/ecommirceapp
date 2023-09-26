import '../favorite_product_screen/widgets/favorite_item_widget.dart';
import 'controller/favorite_product_controller.dart';
import 'models/favorite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';

class FavoriteProductScreen extends GetWidget<FavoriteProductController> {
  const FavoriteProductScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "msg_favorite_product".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 8.v, right: 16.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 283.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 13.h,
                        crossAxisSpacing: 13.h),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.favoriteProductModelObj.value
                        .favoriteItemList.value.length,
                    itemBuilder: (context, index) {
                      FavoriteItemModel model = controller
                          .favoriteProductModelObj
                          .value
                          .favoriteItemList
                          .value[index];
                      return FavoriteItemWidget(model, onTapProduct: () {
                        onTapProduct();
                      });
                    })))));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the productDetailScreen.
  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
