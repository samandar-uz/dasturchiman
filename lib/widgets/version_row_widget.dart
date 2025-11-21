import 'package:flutter/material.dart';

Widget buildVersionRow(String version) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF8B5CF6).withValues(alpha: 0.08),
          Color(0xFFEC4899).withValues(alpha: 0.05),
        ],
      ),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(
        color: Color(0xFF8B5CF6).withValues(alpha: 0.2),
        width: 1.5,
      ),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF8B5CF6).withValues(alpha: 0.15),
                Color(0xFFEC4899).withValues(alpha: 0.1),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFF8B5CF6).withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Icon(Icons.info, color: Color(0xFF8B5CF6), size: 20),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            'Ilova versiyasi',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF8B5CF6), Color(0xFFEC4899)],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            "v$version",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    ),
  );
}
