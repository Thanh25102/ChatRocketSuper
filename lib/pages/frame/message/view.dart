import 'package:chatty/common/values/colors.dart';
import 'package:chatty/pages/frame/message/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({super.key});

  Widget _buildPageHeadTitle(String title) {
    return Container(
        margin: const EdgeInsets.only(top: 250),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryElementText,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 28.sp),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: SizedBox(
        width: 360.w,
        height: 780.h,
        child: _buildPageHeadTitle(controller.title),
      ),
    );
  }
}
