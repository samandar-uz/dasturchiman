import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../service/navigator_to.dart';
import '../util/banner.dart';

Widget buildCelebrityCard(int index, BuildContext content) {
  return GestureDetector(
    onTap: () => navigateToPage(content, index),
    child: Container(
      height: 200.h,
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Image.asset(banner[index]['image'], fit: BoxFit.cover),
      ),
    ),
  );
}
