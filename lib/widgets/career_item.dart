import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildCareerItem({
  required int index,
  required String title,
  required List<dynamic> descriptions,
  bool isLast = false,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: isLast ? 0 : 20.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF8B5CF6).withValues(alpha: 0.8),
                    Color(0xFFEC4899).withValues(alpha: 0.8),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF8B5CF6).withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: const Color(0xFF1E293B),
                  letterSpacing: 0.2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Container(
          margin: EdgeInsets.only(left: 16.w),
          padding: EdgeInsets.only(left: 16.w),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: const Color(0xFF8B5CF6).withValues(alpha: 0.3),
                width: 2,
              ),
            ),
          ),
          child: Column(
            children: descriptions
                .map<Widget>(
                  (desc) => Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8.h),
                          width: 6.w,
                          height: 6.w,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF8B5CF6), Color(0xFFEC4899)],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            desc,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color(0xFF475569),
                              height: 1.6,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    ),
  );
}
