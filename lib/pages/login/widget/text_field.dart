// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/values/color.dart';

Widget buildTextField(
  String text,
  TextInputType textType,
  IconData icon,
  void Function(String value)? fun,
) {
  return Container(
    margin: EdgeInsets.only(top: 8.h, bottom: 16.h),
    width: 325.w,
    child: TextField(
      onChanged: (value) => fun!(value),
      keyboardType: textType,
      textDirection: TextDirection.ltr,
      cursorColor: AppColors.primaryElement,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.w),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.w),
          borderSide:
              const BorderSide(color: AppColors.primaryElement, width: 1),
        ),
        border: InputBorder.none,
        prefixIcon: IconButton(
          icon: Icon(icon, color: Colors.black),
          onPressed: () {},
        ),
      ),
      autocorrect: false,
      obscureText: textType == TextInputType.visiblePassword ? true : false,
    ),
  );
}
//"Enter your email address"
