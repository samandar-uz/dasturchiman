import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/widgets/app.dart';

import '../dto/story.dart';
import '../util/stores.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  final Map<int, bool> _expandedStories = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: app("Hikoyalar"),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(16.w),
          physics: const BouncingScrollPhysics(),
          itemCount: stories.length,
          itemBuilder: (context, index) =>
              _buildStoryItem(stories[index], index),
        ),
      ),
    );
  }

  Widget _buildStoryItem(Story story, int index) {
    final isExpanded = _expandedStories[index] ?? false;

    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: EdgeInsets.all(18.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 52.w,
                  height: 52.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        story.primaryColor.withValues(alpha: 0.2),
                        story.primaryColor.withValues(alpha: 0.1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Text(story.emoji, style: TextStyle(fontSize: 28.sp)),
                  ),
                ),
                SizedBox(width: 14.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        story.title,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F2937),
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: story.primaryColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Text(
                          story.subtitle,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: story.primaryColor,
                            height: 1.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          if (isExpanded)
            Padding(
              padding: EdgeInsets.fromLTRB(18.w, 0, 18.w, 18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1.h,
                    margin: EdgeInsets.only(bottom: 14.h),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          story.primaryColor.withValues(alpha: 0.3),
                          story.primaryColor.withValues(alpha: 0.05),
                        ],
                      ),
                    ),
                  ),
                  // Content Text
                  Text(
                    story.content,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      color: Color(0xFF4B5563),
                      height: 1.8,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),

          // Button
          Padding(
            padding: EdgeInsets.fromLTRB(18.w, 0, 18.w, 18.h),
            child: InkWell(
              onTap: () {
                setState(() {
                  _expandedStories[index] = !isExpanded;
                });
              },
              borderRadius: BorderRadius.circular(12.r),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12.h),
                decoration: BoxDecoration(
                  gradient: isExpanded
                      ? null
                      : LinearGradient(
                          colors: [
                            story.primaryColor,
                            story.primaryColor.withValues(alpha: 0.8),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                  color: isExpanded ? Color(0xFFF3F4F6) : null,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      isExpanded
                          ? Icons.remove_circle_outline
                          : Icons.add_circle_outline,
                      size: 18.sp,
                      color: isExpanded ? story.primaryColor : Colors.white,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      isExpanded ? "Yig'ish" : "To'liq o'qish",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: isExpanded ? story.primaryColor : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
