import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSectionHeader({
  required IconData icon,
  required String title,
  required Gradient gradient,
}) {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF8B5CF6).withValues(alpha: 0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Icon(icon, color: Colors.white, size: 22.sp),
      ),
      SizedBox(width: 12.w),
      Expanded(
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1E293B),
            letterSpacing: 0.3,
          ),
        ),
      ),
    ],
  );
}
