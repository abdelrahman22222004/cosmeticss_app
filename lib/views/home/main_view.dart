import 'package:cosmetics/views/home/pages/cart.dart';
import 'package:cosmetics/views/home/pages/category.dart';
import 'package:cosmetics/views/home/pages/home.dart';
import 'package:cosmetics/views/home/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;

  final screens = [Home(), Cart(), Category(), Profile()];

  final selectedIcons = [
    'assets/icons/selected_home.svg',
    'assets/icons/selected_cart.svg',
    'assets/icons/selected_category.svg',
    'assets/icons/selected_profile.svg',
  ];

  final unselectedIcons = [
    'assets/icons/un_selected_home.svg',
    'assets/icons/un_selected_my_cart.svg',
    'assets/icons/un_selected_categories.svg',
    'assets/icons/un_selected_profile.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70.h,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12.sp,
          unselectedFontSize: 12.sp,
          items: List.generate(4, (index) {
            return BottomNavigationBarItem(
              icon: SvgPicture.asset(
                currentIndex == index
                    ? selectedIcons[index]
                    : unselectedIcons[index],
                width: 22.w,
                height: 22.h,
              ),
              label: index == 0
                  ? 'Home'
                  : index == 1
                  ? 'Cart'
                  : index == 2
                  ? 'Category'
                  : 'Profile',
            );
          }),
        ),
      ),
    );
  }
}
