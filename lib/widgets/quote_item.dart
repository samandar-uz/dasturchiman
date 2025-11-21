import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildQuoteItem({
  required String quote,
  required int index,
  bool isLast = false,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: isLast ? 0 : 16.h),
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color(0xFF6366F1).withValues(alpha: 0.05),
          const Color(0xFF8B5CF6).withValues(alpha: 0.05),
        ],
      ),
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(
        color: const Color(0xFF6366F1).withValues(alpha: 0.2),
        width: 1,
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28.w,
          height: 28.w,
          decoration: BoxDecoration(
            color: const Color(0xFF6366F1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Center(
            child: Text(
              '${index + 1}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            quote,
            style: TextStyle(
              fontSize: 15.sp,
              color: const Color(0xFF334155),
              height: 1.6,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    ),
  );
}
