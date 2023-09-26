import '../controller/product_detail_controller.dart';
import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:snackland/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductimage238x375,
      height: 238.v,
      width: 375.h,
    );
  }
}
