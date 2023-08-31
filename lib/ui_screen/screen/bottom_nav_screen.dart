import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:innova_task/ui_screen/screen/home_page.dart';
import 'package:innova_task/ui_screen/screen/main_screen.dart';
import 'package:innova_task/ui_screen/utils/style.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _selectedScreenIndex = 2;

  final List<Widget> _screen =  [
    // MainScreen(),
    // MainScreen(),
    // MainScreen(),
    // MainScreen(),
    // MainScreen(),

   HomePage(),
   HomePage(),
   HomePage(),
   HomePage(),
   HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedScreenIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        height: 65,
        index: _selectedScreenIndex,

        backgroundColor: Colors.transparent,
        onTap: (index) {
          _selectedScreenIndex =index;
          setState(() {});
        },
        items: [
          Image.asset("assets/icons/home.png", height: 30),
          Image.asset("assets/icons/favorite.png", height: 30),
          Image.asset("assets/icons/bag.png", height: 30),
          Image.asset("assets/icons/notification.png", height: 30),
          Image.asset("assets/icons/person.png", height: 30),
        ],
      ),
    );
  }
}
