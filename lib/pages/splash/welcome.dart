// ignore_for_file: sized_box_for_whitespace

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/values/color.dart';
import 'package:school/pages/home/home_page.dart';
import 'package:school/pages/splash/bloc/welcome_bloc.dart';

import '../../common/widgets/text_widget.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<WelcomeBloc, WelcomeState>(builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 45.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index) {
                  state.page = index;
                  BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                },
                children: [
                  onBoardingPage(
                    img: "assets/images/man.png",
                    title: "First See Learning",
                    text:
                        "Forget about a for of paper all knowledge in one learning",
                    buttonName: "Next",
                    context: context,
                    index: 1,
                  ),
                  onBoardingPage(
                    img: "assets/images/reading.png",
                    title: "Connect With Everyone",
                    text:
                        "Always keep in touch with your tutor & friend. lets het connected",
                    buttonName: "Next",
                    context: context,
                    index: 2,
                  ),
                  onBoardingPage(
                    img: "assets/images/boy.png",
                    title: "Always Fascinated Learning",
                    text:
                        "Anywhere anytime. The time is at your discretion so study whenever you want.",
                    buttonName: "get started",
                    context: context,
                    index: 3,
                  ),
                ],
              ),
              Positioned(
                bottom: 70.h,
                child: DotsIndicator(
                  position: state.page,
                  dotsCount: 3,
                  decorator: const DotsDecorator(
                    color: AppColors.primaryThreeElementText,
                    activeColor: AppColors.primaryElement,
                    size: Size.square(8),
                    activeSize: Size(16, 8),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  Widget onBoardingPage({
    required String img,
    required String title,
    required String text,
    required int index,
    required BuildContext context,
    required String buttonName,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 345.h,
          width: 345.w,
          child: Image.asset(img),
        ),
        SizedBox(height: 15.h),
        text24(text: title),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: text16(
            text: text,
          ),
        ),
        SizedBox(height: 50.h),
        Container(
          width: 325.w,
          height: 50.h,
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.w),
              color: AppColors.primaryElement),
          child: TextButton(
            child: Text(
              buttonName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            ),
            onPressed: () {
              if (index < 3) {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              } else {
                Navigator.pushAndRemoveUntil(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const HomePage(),
                  ),
                  (route) => false,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
