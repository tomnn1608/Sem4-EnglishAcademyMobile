import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:exam4/pages/home.dart';
import 'package:exam4/pages/profile.dart';
import 'package:exam4/pages/wallet.dart';
import 'package:exam4/pages/lesson.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0 ;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Wallet wallet;
  late Profile profile;
  late Lesson lesson;

  @override
  void initState() {
    homepage=Home();
    wallet=Wallet();
    lesson=Lesson();
    profile=Profile();
    pages=[homepage , wallet , profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items: [
          Icon(Icons.home_outlined,
          color: Colors.white,
          ),
          Icon(Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(Icons.person_outline,
          color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
