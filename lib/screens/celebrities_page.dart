import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dto/category.dart';
import '../widgets/celebrities_list.dart';
import '../widgets/famous_app_bar.dart';

class CelebritiesPage extends StatefulWidget {
  const CelebritiesPage({super.key});

  @override
  State<CelebritiesPage> createState() => _CelebritiesPageState();
}

class _CelebritiesPageState extends State<CelebritiesPage>
    with SingleTickerProviderStateMixin {
  final List<Category> categories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: buildAppBar("Mashxurlar"),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 24.h),
              buildCelebritiesList(),
            ],
          ),
        ),
      ),
    );
  }



  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 6.w,
          height: 32.h,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF8B5CF6), Color(0xFFEC4899), Color(0xFFF59E0B)],
            ),
            borderRadius: BorderRadius.circular(4.r),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF8B5CF6).withValues(alpha: 0.4),
                blurRadius: 12,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
        SizedBox(width: 14.w),
        Text(
          "Mashxurlar",
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.grey[900],
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
