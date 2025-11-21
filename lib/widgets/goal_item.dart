import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildGoalItem({
  required String goal,
  required int index,
  bool isLast = false,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: isLast ? 0 : 12.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 4.h),
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(
            color: const Color(0xFF10B981),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.check, color: Colors.white, size: 14.sp),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            goal,
            style: TextStyle(
              fontSize: 15.sp,
              color: const Color(0xFF334155),
              height: 1.6,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ],
    ),
  );
}
