import '../notification_feed_screen/widgets/feeds_item_widget.dart';
import 'controller/notification_feed_controller.dart';
import 'models/feeds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';
import 'package:snackland/widgets/app_bar/appbar_image.dart';
import 'package:snackland/widgets/app_bar/appbar_subtitle.dart';
import 'package:snackland/widgets/app_bar/custom_app_bar.dart';

class NotificationFeedScreen extends GetWidget<NotificationFeedController> {
  const NotificationFeedScreen({Key? key}) : super(key: key);

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
                    text: "lbl_feed".tr, margin: EdgeInsets.only(left: 12.h))),
            body: Padding(
                padding: EdgeInsets.only(top: 11.v),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 1.v);
                    },
                    itemCount: controller.notificationFeedModelObj.value
                        .feedsItemList.value.length,
                    itemBuilder: (context, index) {
                      FeedsItemModel model = controller.notificationFeedModelObj
                          .value.feedsItemList.value[index];
                      return FeedsItemWidget(model, onTapFeeditem: () {
                        onTapFeeditem();
                      });
                    })))));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the productDetailScreen.
  onTapFeeditem() {
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
