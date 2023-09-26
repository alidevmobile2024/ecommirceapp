import '../controller/notification_feed_controller.dart';
import '../models/feeds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';

// ignore: must_be_immutable
class FeedsItemWidget extends StatelessWidget {
  FeedsItemWidget(
    this.feedsItemModelObj, {
    Key? key,
    this.onTapFeeditem,
  }) : super(
          key: key,
        );

  FeedsItemModel feedsItemModelObj;

  var controller = Get.find<NotificationFeedController>();

  VoidCallback? onTapFeeditem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFeeditem?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProductimage,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              margin: EdgeInsets.only(bottom: 40.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        feedsItemModelObj.newproduct!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "msg_nike_air_zoom_pegasus2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.80,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "msg_june_3_2015_5_06".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
