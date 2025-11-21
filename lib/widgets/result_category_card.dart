import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/dto/category.dart';
import '../dto/category_stats.dart';

Widget buildCategoryCard(
  Category category,
  CategoryStats stats,
  int index,
  BuildContext context,
) {
  final totalQuestions =
      stats.totalCorrect + stats.totalWrong + stats.totalSkipped;
  final percentage = totalQuestions > 0
      ? (stats.totalCorrect / totalQuestions * 100).round()
      : 0;

  Color accentColor;
  Color lightAccentColor;
  if (percentage >= 70) {
    accentColor = const Color(0xFF4CAF50);
    lightAccentColor = const Color(0xFFE8F5E9);
  } else if (percentage >= 50) {
    accentColor = const Color(0xFFFF9800);
    lightAccentColor = const Color(0xFFFFF3E0);
  } else {
    accentColor = const Color(0xFFEF5350);
    lightAccentColor = const Color(0xFFFFEBEE);
  }

  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, lightAccentColor.withValues(alpha: 0.3)],
        ),
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: accentColor.withValues(alpha: 0.2),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: accentColor.withValues(alpha: 0.15),
            blurRadius: 20,
            spreadRadius: 2,
            offset: const Offset(0, 8),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Orqa fon uchun dekorativ element
          Positioned(
            right: -20,
            top: -20,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: accentColor.withValues(alpha: 0.05),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                // Header qismi
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(
                                color: accentColor.withValues(alpha: 0.2),
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: accentColor.withValues(alpha: 0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Image.asset(
                                category.assetPath,
                                width: 44.w,
                                height: 44.h,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(
                                    Icons.quiz_rounded,
                                    size: 44.sp,
                                    color: accentColor,
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 14.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  category.name,
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey[900],
                                    fontFamily: 'Poppins',
                                    letterSpacing: -0.5,
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  "$totalQuestions ta savol",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.grey[600],
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Percentage badge
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 10.h,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            accentColor,
                            accentColor.withValues(alpha: 0.7),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: [
                          BoxShadow(
                            color: accentColor.withValues(alpha: 0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            percentage >= 70
                                ? Icons.trending_up
                                : percentage >= 50
                                ? Icons.remove
                                : Icons.trending_down,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            "$percentage%",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                // Divider
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        accentColor.withValues(alpha: 0.2),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20.h),

                // Statistika qismi
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildEnhancedStatItem(
                      Icons.emoji_events_rounded,
                      "${stats.bestScore}",
                      "Ball",
                      const Color(0xFFFFD700),
                      const Color(0xFFFFFDE7),
                    ),
                    Container(
                      width: 1.5,
                      height: 40.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.grey[300]!,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                    _buildEnhancedStatItem(
                      Icons.check_circle_rounded,
                      "${stats.totalCorrect}",
                      "To'g'ri",
                      const Color(0xFF4CAF50),
                      const Color(0xFFE8F5E9),
                    ),
                    Container(
                      width: 1.5,
                      height: 40.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.grey[300]!,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                    _buildEnhancedStatItem(
                      Icons.cancel_rounded,
                      "${stats.totalSkipped + stats.totalWrong}",
                      "Xato",
                      const Color(0xFFEF5350),
                      const Color(0xFFFFEBEE),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildEnhancedStatItem(
  IconData icon,
  String value,
  String label,
  Color color,
  Color bgColor,
) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: Border.all(color: color.withValues(alpha: 0.3), width: 2),
        ),
        child: Icon(icon, color: color, size: 22.sp),
      ),
      SizedBox(height: 8.h),
      Text(
        value,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: Colors.grey[900],
          fontFamily: 'Poppins',
        ),
      ),
      SizedBox(height: 2.h),
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
