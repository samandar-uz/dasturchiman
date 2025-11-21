import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/widgets/info_item.dart';

import '../widgets/card.dart';
import '../widgets/career_item.dart';
import '../widgets/glass_container.dart';
import '../widgets/goal_item.dart';
import '../widgets/quote_item.dart';
import '../widgets/section_header_widget.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          data['title'] ?? "null",
          style: TextStyle(
            fontFamily: 'Poppins',
            color: const Color(0xFF1E293B),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF6366F1).withValues(alpha: 0.2),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(
                      data['image'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              buildCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: const Color(0xFF6366F1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          'Ma\'lumot',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1E293B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    buildInfoItem("To'liq ismi", data['name'] ?? "null"),
                    buildInfoItem(
                      "Tug'ilgan sanasi",
                      data['birth_date'] ?? "null",
                    ),
                    buildInfoItem(
                      "Tug'ilgan joyi",
                      data['birth_place'] ?? "null",
                    ),
                    buildInfoItem(
                      "Fuqaroligi",
                      (data['citizenship'] as List<dynamic>?)?.join(', ') ??
                          "Ma'lumot yo'q",
                    ),
                    buildInfoItem(
                      "Kasbi",
                      (data['profession'] as List<dynamic>?)?.join(', ') ??
                          "Ma'lumot yo'q",
                    ),
                    if (data['education'] != null &&
                        (data['education'] as List).isNotEmpty)
                      buildInfoItem(
                        "Ta'lim",
                        (data['education'] as List<dynamic>).join(', '),
                        isLast: true,
                      )
                    else
                      const SizedBox(),
                  ],
                ),
              ),

              SizedBox(height: 16.h),
              if (data['career'] != null && (data['career'] as List).isNotEmpty)
                buildGlassContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildSectionHeader(
                        icon: Icons.timeline,
                        title: 'Biografiya',
                        gradient: const LinearGradient(
                          colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      ...List.generate(
                        (data['career'] as List<dynamic>).length,
                        (index) {
                          final item = data['career'][index];
                          final title = item['title'] ?? '';
                          final descriptionList =
                              (item['description'] as List<dynamic>?) ?? [];

                          return buildCareerItem(
                            index: index,
                            title: title,
                            descriptions: descriptionList,
                            isLast:
                                index == (data['career'] as List).length - 1,
                          );
                        },
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 16.h),

              if (data['quotes'] != null && (data['quotes'] as List).isNotEmpty)
                buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              color: const Color(0xFF6366F1),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.format_quote,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            'Mashhur iqtiboslari',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E293B),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      ...List.generate(
                        (data['quotes'] as List<dynamic>).length,
                        (index) {
                          final quote = data['quotes'][index];
                          return buildQuoteItem(
                            quote: quote,
                            index: index,
                            isLast:
                                index == (data['quotes'] as List).length - 1,
                          );
                        },
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 16.h),
              if (data['wealth'] != null)
                buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF59E0B),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            'Boylik',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E293B),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      buildInfoItem(
                        "Holati",
                        data['wealth']['status'] ?? "Ma'lumot yo'q",
                      ),
                      buildInfoItem(
                        "Taxminiy boyligi",
                        data['wealth']['estimated'] ?? "Ma'lumot yo'q",
                        isLast: true,
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 16.h),

              if (data['achievements'] != null &&
                  (data['achievements'] as List).isNotEmpty)
                buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEC4899),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.emoji_events,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            'Yutuqlar',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E293B),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      ...List.generate(
                        (data['achievements'] as List<dynamic>).length,
                        (index) {
                          final achievement = data['achievements'][index];
                          return buildGoalItem(
                            goal: achievement,
                            index: index,
                            isLast:
                                index ==
                                (data['achievements'] as List).length - 1,
                          );
                        },
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 16.h),

              if (data['goals'] != null && (data['goals'] as List).isNotEmpty)
                buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              color: const Color(0xFF10B981),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.flag,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            'Maqsadlar',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E293B),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      ...List.generate(
                        (data['goals'] as List<dynamic>).length,
                        (index) {
                          final goal = data['goals'][index];
                          return buildGoalItem(
                            goal: goal,
                            index: index,
                            isLast: index == (data['goals'] as List).length - 1,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 20.h),

              buildCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: const Color(0xFF7634DA),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Icon(
                            Icons.newspaper,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          'Batafsil',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1E293B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      data['bio'] ?? "Ma'lumot yo'q",
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
