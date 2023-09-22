import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget text24({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontSize: 24.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text16({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.grey[600],
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}
