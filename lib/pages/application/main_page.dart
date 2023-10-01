import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/values/color.dart';
import 'package:school/pages/application/widget/app_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      child: SafeArea(
        child: Scaffold(
          body: buildPage(index),
          bottomNavigationBar: Container(
            height: 58.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.h),
                topRight: Radius.circular(20.h),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ],
            ),
            child: BottomNavigationBar(
              iconSize: 18,
              selectedIconTheme: const IconThemeData(size: 20),
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: AppColors.primaryElement,
              unselectedItemColor: AppColors.primaryFourElementText,
              currentIndex: index,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              items: [
                buildBottom(0),
                buildBottom(1),
                buildBottom(2),
                buildBottom(3),
                buildBottom(4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
