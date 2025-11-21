import 'package:flutter/material.dart';

import '../util/developer_inspiration_list.dart';

Widget developerInspirationCard(int value) {
  final result = developerInspirations[value];

  final gradients = [
    [Color(0xFF8B5CF6), Color(0xFFEC4899)],
    [Color(0xFF3B82F6), Color(0xFF8B5CF6)],
    [Color(0xFF10B981), Color(0xFF3B82F6)],
  ];

  final gradient = gradients[value % gradients.length];

  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          gradient[0].withValues(alpha: 0.08),
          gradient[1].withValues(alpha: 0.06),
        ],
      ),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: gradient[0].withValues(alpha: 0.2), width: 1.5),
      boxShadow: [
        BoxShadow(
          color: gradient[0].withValues(alpha: 0.12),
          blurRadius: 20,
          offset: const Offset(0, 8),
        ),
        BoxShadow(
          color: gradient[1].withValues(alpha: 0.08),
          blurRadius: 32,
          offset: const Offset(0, 12),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                gradient[0].withValues(alpha: 0.2),
                gradient[1].withValues(alpha: 0.15),
              ],
            ),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: gradient[0].withValues(alpha: 0.3),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: gradient[0].withValues(alpha: 0.2),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              result.image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        gradient[0].withValues(alpha: 0.15),
                        gradient[1].withValues(alpha: 0.1),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: gradient[0].withValues(alpha: 0.6),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                result.title,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradient,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  result.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.only(left: 12, top: 8, bottom: 4),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: gradient[0].withValues(alpha: 0.5),
                      width: 3,
                    ),
                  ),
                ),
                child: Text(
                  result.quote,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
