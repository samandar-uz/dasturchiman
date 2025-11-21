import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/widgets/app_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../dto/category.dart';
import '../dto/category_stats.dart';
import '../widgets/result_category_card.dart';
import '../widgets/result_empty_state.dart';
import '../widgets/developer_inspiration_card.dart';

class AllCategoriesStatisticsPage extends StatefulWidget {
  final List<Category> categories;

  const AllCategoriesStatisticsPage({super.key, required this.categories});

  @override
  State<AllCategoriesStatisticsPage> createState() =>
      AllCategoriesStatisticsPageState();
}

class AllCategoriesStatisticsPageState
    extends State<AllCategoriesStatisticsPage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  SharedPreferences? _prefs;
  bool _isLoading = true;
  final Map<int, CategoryStats> _categoryStats = {};
  final List<Category> _playedCategories = [];

  late TabController _tabController;

  int totalGames = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addObserver(this);
    loadAllStatistics();
  }

  @override
  void didUpdateWidget(AllCategoriesStatisticsPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    loadAllStatistics();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      loadAllStatistics();
    }
  }

  void refreshStatistics() {
    loadAllStatistics();
  }

  @override
  void dispose() {
    _tabController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void reloadStatistics() {
    loadAllStatistics();
  }

  Future<void> loadAllStatistics() async {
    _prefs = await SharedPreferences.getInstance();
    totalGames = 0;
    _categoryStats.clear();
    _playedCategories.clear();

    for (var category in widget.categories) {
      String? lastGameString = _prefs!.getString('last_game_${category.id}');

      if (lastGameString != null) {
        try {
          final Map<String, dynamic> lastGame =
              jsonDecode(lastGameString) as Map<String, dynamic>;

          int totalCorrect = lastGame['correct'] ?? 0;
          int totalWrong = lastGame['wrong'] ?? 0;
          int totalSkipped = lastGame['skipped'] ?? 0;
          int bestScore = lastGame['score'] ?? 0;
          bool isGame = lastGame['is_game'] ?? false;

          _categoryStats[category.id] = CategoryStats(
            bestScore: bestScore,
            totalCorrect: totalCorrect,
            totalWrong: totalWrong,
            totalSkipped: totalSkipped,
            isScore: isGame,
          );

          _playedCategories.add(category);
          totalGames++;

          debugPrint(
            'Category ${category.id}: isScore=$isGame, bestScore=$bestScore',
          );
        } catch (e) {
          debugPrint('Error parsing stats for category ${category.id}: $e');
        }
      }
    }

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Widget _buildCategoriesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        developerInspirationCard(1),
        SizedBox(height: 16.h),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _playedCategories.length,
          itemBuilder: (context, index) {
            final category = _playedCategories[index];
            final stats = _categoryStats[category.id];
            if (stats == null) {
              return const SizedBox.shrink();
            }
            return buildCategoryCard(category, stats, index, context);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: const Color(0xFFF8F9FA),
        body: Center(
          child: CircularProgressIndicator(
            color: Color(0xFF8B5CF6),
            strokeWidth: 3,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: appWidget(),
      body: totalGames == 0
          ? buildEmptyState()
          : CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 24.h,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      _buildCategoriesList(),
                      const SizedBox(height: 32),
                    ]),
                  ),
                ),
              ],
            ),
    );
  }
}
