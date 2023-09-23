// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/values/color.dart';

Widget buildButton(Color color, String name) {
  return Container(
    width: double.infinity.w,
    height: 45.h,
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.w),
      color: color,
      border: name == "Log In"
          ? Border.all(color: AppColors.primaryElement)
          : Border.all(
              color: AppColors.primaryFourElementText,
            ),
    ),
    child: GestureDetector(
      onTap: () {},
      child: Center(
        child: Text(name,
            style: TextStyle(
              color: name == "Log In"
                  ? AppColors.primaryBackground
                  : AppColors.primaryText,
              fontSize: 14.sp,
            )),
      ),
    ),
  );
}
