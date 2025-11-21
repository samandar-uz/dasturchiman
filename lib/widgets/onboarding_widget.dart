import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/dto/onboarding_data.dart';

Widget buildPage(OnboardingData data) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 40.w),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(data.image, width: 280.w, height: 280.h),
        SizedBox(height: 40.h),
        Text(
          data.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontFamily: "poppins",
            height: 1.3,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          data.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: "poppins",
            color: Colors.grey[600],
            height: 1.6,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
