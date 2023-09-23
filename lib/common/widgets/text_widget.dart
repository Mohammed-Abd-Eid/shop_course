import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../values/color.dart';

Widget text24({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColors.primaryText,
      fontSize: 24.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text18({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColors.primaryText,
      fontSize: 18.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text16({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColors.primarySecondaryElementText,
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColors.primaryThreeElementText,
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}
