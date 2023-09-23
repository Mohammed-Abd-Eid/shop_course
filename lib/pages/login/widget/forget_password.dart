// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/values/color.dart';

Widget forgetPass() {
  return GestureDetector(
    onTap: () {},
    child: Text(
      "Forgot Password?",
      style: TextStyle(
        fontSize: 12.sp,
        color: AppColors.primaryText,
        decoration: TextDecoration.underline,
      ),
    ),
  );
}
