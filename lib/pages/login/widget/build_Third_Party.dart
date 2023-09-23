// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildThirdParty(
  BuildContext context,
) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h, left: 80.w, right: 80.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        rowIcons("google"),
        rowIcons("apple"),
        rowIcons("facebook"),
      ],
    ),
  );
}

Widget rowIcons(String icon) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset("assets/icons/$icon.png"),
    ),
  );
}
