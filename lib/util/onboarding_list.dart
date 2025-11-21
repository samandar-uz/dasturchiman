import 'dart:ui';
import '../dto/onboarding_data.dart';

final List<OnboardingData> pages = [
  OnboardingData(
    title: "Quiz ilovasiga\nxush kelibsiz",
    description: "Bilimingizni sinab ko'ring va yangi narsalarni o'rganing",
    image: "assets/images/onboarding/step_1.png",
    color: Color(0xFF6C5CE7),
  ),
  OnboardingData(
    title: "Turli mavzular",
    description: "O'zingizga yoqadigan mavzularni tanlang va o'rganing",
    image: "assets/images/onboarding/step_2.png",
    color: Color(0xFF0984E3),
  ),
  OnboardingData(
    title: "Natijalaringizni\nkuzating",
    description: "O'z rivojlanishingizni kuzatib boring va motivatsiya oling",
    image: "assets/images/onboarding/step_3.png",
    color: Color(0xFFFD79A8),
  ),
  OnboardingData(
    title: "Boshlashga\ntayyor misiz?",
    description: "Keling, birgalikda bilim sayohatini boshlaymiz!",
    image: "assets/images/onboarding/step_4.png",
    color: Color(0xFF00B894),
  ),
];
