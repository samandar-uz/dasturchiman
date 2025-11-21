import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildMiniStatItem(
    IconData icon,
    String value,
    String label,
    Color color,
    ) {
  return Column(
    children: [
      Icon(icon, color: color, size: 22.sp),
      SizedBox(height: 6.h),
      Text(
        value,
        style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
          color: color,
          fontFamily: 'Poppins',
        ),
      ),
      Text(
        label,
        style: TextStyle(
          fontSize: 11.sp,
          color: Colors.grey[600],
          fontFamily: 'Poppins',
        ),
      ),
    ],
  );
}