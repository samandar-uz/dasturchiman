import 'dart:convert';
import 'dart:math';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/screens/result_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../dto/quiz.dart';
import '../util/app_string.dart';
import '../widgets/mini_stat.dart';

class QuizPage extends StatefulWidget {
  final String title;
  final int categoryId;

  const QuizPage({super.key, required this.title, required this.categoryId});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>
    with SingleTickerProviderStateMixin {
  late Future<List<Question>> _futureQuestions;
  late final AudioPlayer _backgroundPlayer;
  late final AudioPlayer _sfxPlayer;
  late AnimationController _controller;

  int score = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int skippedAnswers = 0;
  int currentIndex = 0;
  int? selectedAnswerIndex;
  bool answered = false;
  int timeLeft = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _backgroundPlayer = AudioPlayer();
    _sfxPlayer = AudioPlayer();
    _futureQuestions = _loadQuestionsFromJson();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _futureQuestions.then((qs) {
      if (qs.isNotEmpty) {
        _startTimer(qs.first);
      }
    });
  }

  Future<void> _playSoundEffect(String soundName) async {
    try {
      await _sfxPlayer.stop();
      await _sfxPlayer.setVolume(0.6);
      await _sfxPlayer.play(AssetSource('audio/$soundName.wav'));
    } catch (e) {
      debugPrint('SFX xato: $e');
    }
  }

  Future<void> _saveResult(int totalQuestions) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String result = jsonEncode({
      'score': score,
      'total': totalQuestions,
      'correct': correctAnswers,
      'wrong': wrongAnswers,
      'skipped': skippedAnswers,
      'is_game': true,
      'date': DateTime.now().toIso8601String(),
      'percentage': (score / totalQuestions * 100).round(),
    });
    await prefs.setString('last_game_${widget.categoryId}', result);
  }

  void _startTimer(Question question) {
    timeLeft = (question.seconds) > 0 ? (question.seconds) : 15;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        if (timeLeft > 0 && !answered) {
          setState(() => timeLeft--);
        } else if (timeLeft == 0 && !answered) {
          _onTimeUp();
        }
      }
    });
  }

  void _onTimeUp() {
    if (timeLeft != 0) return;

    _timer?.cancel();

    setState(() {
      answered = true;
      selectedAnswerIndex = -1;
      skippedAnswers++;
    });

    Future.delayed(const Duration(milliseconds: 1500), () {
      if (!mounted) return;
      _autoNextQuestion();
    });
  }

  void _autoNextQuestion() async {
    final qs = await _futureQuestions;
    if (currentIndex < qs.length - 1) {
      setState(() {
        currentIndex++;
        selectedAnswerIndex = null;
        answered = false;
      });
      _startTimer(qs[currentIndex]);
    } else {
      await _saveResult(qs.length);
      if (mounted) {
        _timer?.cancel();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              correctAnswers: correctAnswers,
              wrongAnswers: wrongAnswers,
              skippedAnswers: skippedAnswers,
              totalQuestions: qs.length,
              categoryName: widget.title,
            ),
          ),
        );
      }
    }
  }

  Future<List<Question>> _loadQuestionsFromJson() async {
    try {
      final jsonString = await rootBundle.loadString(
        'assets/quiz/file_${widget.categoryId}.json',
      );
      final jsonData = json.decode(jsonString) as List<dynamic>;
      final allQuestions = jsonData.map((e) => Question.fromJson(e)).toList();
      allQuestions.shuffle(Random());
      return allQuestions.length > 20
          ? allQuestions.take(20).toList()
          : allQuestions;
    } catch (e) {
      throw Exception('Savollarni yuklashda xatolik: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    _backgroundPlayer.dispose();
    _sfxPlayer.dispose();
    super.dispose();
  }

  void _onSelectAnswer(int index, Question q) {
    if (answered) return;

    _timer?.cancel();

    setState(() {
      selectedAnswerIndex = index;
      answered = true;
      if (q.answers[index].correct) {
        score++;
        correctAnswers++;
        _playSoundEffect('correct');
        _controller.forward().then((_) => _controller.reverse());
      } else {
        wrongAnswers++;
        _playSoundEffect('wrong');
      }
    });
  }

  void _onNext(List<Question> questions) async {
    if (!answered) return;

    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
        selectedAnswerIndex = null;
        answered = false;
      });
      _startTimer(questions[currentIndex]);
    } else {
      _timer?.cancel();
      await _saveResult(questions.length);
      if (mounted) {
        await Future.delayed(const Duration(milliseconds: 500));

        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                correctAnswers: correctAnswers,
                wrongAnswers: wrongAnswers,
                skippedAnswers: skippedAnswers,
                totalQuestions: questions.length,
                categoryName: widget.title,
              ),
            ),
          );
        }
      }
    }
  }

  Widget _buildOptionTile(Question q, int i) {
    final bool isSelected = selectedAnswerIndex == i;
    final bool isCorrect = q.answers[i].correct;
    final bool isTimeUp = selectedAnswerIndex == -1;

    Color bgColor = const Color(0xFFFAFAFA);
    Color borderColor = const Color(0xFFE0E0E0);
    Color textColor = const Color(0xFF2D3748);

    if (answered) {
      if (isCorrect) {
        bgColor = const Color(0xFFF0FDF4);
        borderColor = const Color(0xFF22C55E);
        textColor = const Color(0xFF166534);
      } else if (isSelected && !isCorrect) {
        bgColor = const Color(0xFFFEF2F2);
        borderColor = const Color(0xFFEF4444);
        textColor = const Color(0xFF991B1B);
      } else if (isTimeUp && isCorrect) {
        bgColor = const Color(0xFFF0FDF4);
        borderColor = const Color(0xFF22C55E);
      }
    } else if (isSelected) {
      bgColor = const Color(0xFFEEF2FF);
      borderColor = const Color(0xFF6366F1);
      textColor = const Color(0xFF4338CA);
    }

    return GestureDetector(
      onTap: answered ? null : () => _onSelectAnswer(i, q),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        margin: EdgeInsets.only(bottom: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            if (isSelected && !answered)
              BoxShadow(
                color: const Color(0xFF6366F1).withValues(alpha: 0.12),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                color: answered && isCorrect
                    ? const Color(0xFF22C55E)
                    : answered && isSelected
                    ? const Color(0xFFEF4444)
                    : isSelected
                    ? const Color(0xFF6366F1)
                    : const Color(0xFFE5E7EB),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  String.fromCharCode(65 + i),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    color: (answered && (isCorrect || isSelected)) || isSelected
                        ? Colors.white
                        : const Color(0xFF6B7280),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                q.answers[i].text,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Question>>(
      future: _futureQuestions,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: const Color(0xFFF9FAFB),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60.w,
                    height: 60.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF6366F1).withValues(alpha: 0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xFF6366F1),
                        strokeWidth: 3,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    quizLoading,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xFF6B7280),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            backgroundColor: const Color(0xFFF9FAFB),
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: const IconThemeData(color: Color(0xFF374151)),
              title: Text(
                widget.title,
                style: const TextStyle(
                  color: Color(0xFF111827),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80.w,
                    height: 80.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEF2F2),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Icon(
                      Icons.error_outline,
                      size: 48.sp,
                      color: const Color(0xFFEF4444),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    errorText,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF111827),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        final questions = snapshot.data ?? [];
        if (questions.isEmpty) return const SizedBox();
        final q = questions[currentIndex];

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async {
            if (didPop) return;
            final shouldPop = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                title: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEF3C7),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(
                        Icons.warning_amber_rounded,
                        color: const Color(0xFFF59E0B),
                        size: 24.sp,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        quizExitTitle,
                        style: TextStyle(
                          color: const Color(0xFF111827),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ],
                ),
                content: Text(
                  quizExitSubtitle,
                  style: TextStyle(
                    color: const Color(0xFF6B7280),
                    fontSize: 15.sp,
                    fontFamily: "Poppins",
                    height: 1.5,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 12.h,
                      ),
                    ),
                    child: Text(
                      dialogNoButton,
                      style: TextStyle(
                        color: const Color(0xFF6B7280),
                        fontSize: 15.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context, true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6366F1),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 12.h,
                      ),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      dialogYesButton,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
            );

            if (shouldPop == true) {
              _timer?.cancel();
              if (context.mounted) Navigator.pop(context);
            }
          },
          child: Scaffold(
            backgroundColor: const Color(0xFFF9FAFB),
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              elevation: 0,
              iconTheme: const IconThemeData(color: Color(0xFF374151)),
              title: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                  fontFamily: 'Poppins',
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(height: 1, color: const Color(0xFFE5E7EB)),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: timeLeft <= 5
                              ? Colors.red[50]
                              : timeLeft <= 10
                              ? Colors.amber[50]
                              : Colors.green[50],
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: timeLeft <= 5
                                ? Colors.red[300]!
                                : timeLeft <= 10
                                ? Colors.amber[300]!
                                : Colors.green[300]!,
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: timeLeft <= 5
                                  ? Colors.red[700]
                                  : timeLeft <= 10
                                  ? Colors.amber[700]
                                  : Colors.green[700],
                              size: 16.sp,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              "${timeLeft}s",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: timeLeft <= 5
                                    ? Colors.red[700]
                                    : timeLeft <= 10
                                    ? Colors.amber[700]
                                    : Colors.green[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.w),
                      ScaleTransition(
                        scale: Tween<double>(begin: 1.0, end: 1.15).animate(
                          CurvedAnimation(
                            parent: _controller,
                            curve: Curves.easeOut,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                            ),
                            borderRadius: BorderRadius.circular(12.r),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(
                                  0xFF6366F1,
                                ).withValues(alpha: 0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16.sp,
                              ),
                              SizedBox(width: 6.w),
                              Text(
                                "$score",
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.w),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: LinearProgressIndicator(
                                  value: (currentIndex + 1) / questions.length,
                                  minHeight: 8.h,
                                  backgroundColor: const Color(0xFFE5E7EB),
                                  valueColor: const AlwaysStoppedAnimation(
                                    Color(0xFF6366F1),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Text(
                              "${currentIndex + 1}/${questions.length}",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                color: const Color(0xFF6B7280),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        // Stats row
                        Row(
                          children: [
                            // Timer
                            const Spacer(),
                            // Stats
                            buildMiniStat(
                              Icons.check_circle,
                              correctAnswers,
                              const Color(0xFF22C55E),
                            ),
                            SizedBox(width: 8.w),
                            buildMiniStat(
                              Icons.cancel,
                              wrongAnswers,
                              const Color(0xFFEF4444),
                            ),
                            SizedBox(width: 8.w),
                            buildMiniStat(
                              Icons.timer_off,
                              skippedAnswers,
                              const Color(0xFFF59E0B),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                                q.questionText,
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF111827),
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              q.answers.length,
                              (i) => _buildOptionTile(q, i),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Next button
                  Container(
                    padding: EdgeInsets.all(20.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, -4),
                        ),
                      ],
                    ),
                    child: SafeArea(
                      top: false,
                      child: SizedBox(
                        width: double.infinity,
                        height: 52.h,
                        child: ElevatedButton(
                          onPressed: answered ? () => _onNext(questions) : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: answered
                                ? const Color(0xFF6366F1)
                                : const Color(0xFFE5E7EB),
                            disabledBackgroundColor: const Color(0xFFE5E7EB),
                            shadowColor: answered
                                ? const Color(0xFF6366F1).withValues(alpha: 0.3)
                                : Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                currentIndex == questions.length - 1
                                    ? "Tugatish"
                                    : "Keyingi savol",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  color: answered
                                      ? Colors.white
                                      : const Color(0xFF9CA3AF),
                                ),
                              ),
                              if (answered) ...[
                                SizedBox(width: 8.w),
                                Icon(
                                  currentIndex == questions.length - 1
                                      ? Icons.check_circle
                                      : Icons.arrow_forward,
                                  size: 20.sp,
                                  color: Colors.white,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
