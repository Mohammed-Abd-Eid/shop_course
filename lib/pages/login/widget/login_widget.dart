import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/widgets/text_widget.dart';

AppBar buildAppBar({required String title}) {
  return AppBar(
    elevation: 1,
    toolbarHeight: 70,
    title: Container(
      margin: EdgeInsets.only(top: 10.h),
      child: text18(text: title),
    ),
  );
}
