import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/screens/service_page.dart';
import 'package:quizapp/screens/home_page.dart';
import 'package:quizapp/screens/results_page.dart';
import 'package:quizapp/screens/settings_page.dart';
import 'package:quizapp/util/categories.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _selectedIndex = 0;

  final GlobalKey<AllCategoriesStatisticsPageState> _statsKey =
      GlobalKey<AllCategoriesStatisticsPageState>();

  late final List<Widget> _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = [
      const HomePage(),
      const CategoryPage(),
      AllCategoriesStatisticsPage(key: _statsKey, categories: categories),
      const SettingsPage(),
    ];
  }

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      HapticFeedback.lightImpact();
      setState(() => _selectedIndex = index);
      if (index == 2) {
        Future.delayed(const Duration(milliseconds: 150), () {
          _statsKey.currentState?.reloadStatistics();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F9FA),
        body: IndexedStack(index: _selectedIndex, children: _tabs),
        bottomNavigationBar: _CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class _CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const _CustomBottomNavBar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      minimum: EdgeInsets.only(bottom: 8.h),
      child: Container(
        height: 70.h,
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: Colors.grey[300]!, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24.r),
          child: Stack(
            children: [
              Row(
                children: [
                  _NavItem(
                    index: 0,
                    selectedIndex: selectedIndex,
                    icon: CupertinoIcons.house,
                    activeIcon: CupertinoIcons.house_fill,
                    onTap: onTap,
                  ),
                  _NavItem(
                    index: 1,
                    selectedIndex: selectedIndex,
                    icon: CupertinoIcons.square_grid_3x2,
                    activeIcon: CupertinoIcons.square_grid_3x2_fill,
                    onTap: onTap,
                  ),
                  _NavItem(
                    index: 2,
                    selectedIndex: selectedIndex,
                    icon: CupertinoIcons.chart_bar_square,
                    activeIcon: CupertinoIcons.chart_bar_square_fill,
                    onTap: onTap,
                  ),
                  _NavItem(
                    index: 3,
                    selectedIndex: selectedIndex,
                    icon: CupertinoIcons.settings,
                    activeIcon: CupertinoIcons.settings_solid,
                    onTap: onTap,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final IconData icon;
  final IconData activeIcon;
  final ValueChanged<int> onTap;

  const _NavItem({
    required this.index,
    required this.selectedIndex,
    required this.icon,
    required this.activeIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          height: 70.h,
          child: Center(
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: isSelected ? 1.0 : 0.0),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) {
                return Transform.scale(
                  scale: 1.0 + (value * 0.08),
                  child: Icon(
                    isSelected ? activeIcon : icon,
                    color: isSelected ? Colors.black : Colors.grey[600],
                    size: isSelected ? 28.sp : 24.sp,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
