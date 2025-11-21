import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/widgets/category_card_widget.dart';

import '../screens/quiz_list_page.dart';
import '../util/app_string.dart';
import '../util/categories.dart';



Widget buildCategoriesList(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(bottom: 20.h, left: 4.w),
        child: Row(
          children: [
            Container(
              width: 5.w,
              height: 28.h,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF8B5CF6), Color(0xFFEC4899)],
                ),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              allCategory,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.grey[900],
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizListPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.black,
                size: 20.sp,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
      ),
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 0.88,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];
          return buildCategoryCard(category, index,context);
        },
      ),
    ],
  );
}