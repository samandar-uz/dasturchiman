import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/widgets/build_section.dart';
import 'package:quizapp/widgets/build_setting_row.dart';
import 'package:quizapp/widgets/version_row_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';


Widget buildAboutSection(String version) {
  return buildSection(
    title: 'Sozlanmalar',
    icon: Icons.info_rounded,
    iconColor: Color(0xFF3B82F6),
    children: [
      buildSettingRow(
        Icons.privacy_tip_outlined,
        'Maxfiylik siyosati',
        Color(0xFF10B981),
        () async {
          final Uri url = Uri.parse("");
          await launchUrl(url, mode: LaunchMode.externalApplication);
        },
      ),
      SizedBox(height: 12.h),
      buildSettingRow(
        Icons.star_rounded,
        'Ilovani baholang',
        Color(0xFFF59E0B),
        () async {
          final Uri url = Uri.parse("");
          await launchUrl(url, mode: LaunchMode.externalApplication);
        },
      ),
      SizedBox(height: 12.h),
      buildSettingRow(
        Icons.share,
        'Do\'stlarga ulashing',
        Color(0xFF06B6D4),
        () {
          Share.share(
            'Men foydalanayotgan ajoyib ilova! Yuklab oling 👇',
          );
        },
      ),
      SizedBox(height: 12.h),
      buildSettingRow(
        Icons.help_outline,
        'Yordam',
        Color(0xFF6366F1),
        () async {
          final Uri url = Uri.parse("https://t.me/samandar");
          await launchUrl(url, mode: LaunchMode.externalApplication);
        },
      ),
      SizedBox(height: 12.h),
      buildVersionRow(version),
    ],
  );
}
