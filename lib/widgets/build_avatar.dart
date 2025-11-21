import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildAvatar(double size, String? assetPath, String initials) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF8B5CF6).withValues(alpha: 0.15),
          Color(0xFFEC4899).withValues(alpha: 0.12),
        ],
      ),
      borderRadius: BorderRadius.circular(16.r),
      boxShadow: [
        BoxShadow(
          color: Color(0xFF8B5CF6).withValues(alpha: 0.2),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
      border: Border.all(
        color: Color(0xFF8B5CF6).withValues(alpha: 0.3),
        width: 2,
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(14.r),
      child: assetPath != null
          ? Image.asset(
        assetPath,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Center(
          child: Text(
            initials,
            style: TextStyle(
              color: Color(0xFF8B5CF6),
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      )
          : Center(
        child: Text(
          initials,
          style: TextStyle(
            color: Color(0xFF8B5CF6),
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    ),
  );
}