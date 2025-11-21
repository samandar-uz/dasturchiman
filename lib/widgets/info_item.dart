import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildInfoItem(String label, String value, {bool isLast = false}) {
  return Padding(
    padding: EdgeInsets.only(bottom: isLast ? 0 : 14.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 15.sp,
                color: const Color(0xFF64748B),
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: '$label: ',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: value,
                  style: TextStyle(
                    color: const Color(0xFF334155),
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}