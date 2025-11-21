import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget buildEmptyState() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(45.w),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6A5AE0).withValues(alpha: 0.08),
                Colors.blue.withValues(alpha: 0.06),
              ],
            ),
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xFF6A5AE0).withValues(alpha: 0.2),
              width: 2,
            ),
          ),
          child: Icon(
            Icons.analytics_outlined,
            size: 80.sp,
            color: Color(0xFF6A5AE0),
          ),
        ),
        SizedBox(height: 28.h),
        Text(
          "Statistika mavjud emas",
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[900],
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          "O'yinlarni boshlang va\nnatijalaringizni kuzatib boring",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey[600],
            height: 1.5,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    ),
  );
}
