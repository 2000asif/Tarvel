import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Component/category.dart';
import 'Component/discovery.dart';
import 'Component/home.dart';
import 'Component/notification.dart';
import 'app_colors.dart';
import 'package:iconly/iconly.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List Page = [
    HomePage(),
    Category(),
    Discovery(),
    Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        backgroundColor: Colors.grey,
        selectedItemColor: Color(iconcolor),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.home,
                color: Color(iconcolor),
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(IconlyLight.discovery), label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.notification), label: ''),
          BottomNavigationBarItem(icon: Icon(IconlyLight.category), label: ''),
        ],
      ),
      body: Page[_currentIndex],
    );
  }
}
