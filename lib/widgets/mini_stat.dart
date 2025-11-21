import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildMiniStat(IconData icon, int count, Color color) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
    decoration: BoxDecoration(
      color: color.withValues(alpha: 0.1),
      borderRadius: BorderRadius.circular(8.r),
      border: Border.all(color: color.withValues(alpha: 0.3), width: 1.5),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14.sp, color: color),
        SizedBox(width: 4.w),
        Text(
          "$count",
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: color,
          ),
        ),
      ],
    ),
  );
}
