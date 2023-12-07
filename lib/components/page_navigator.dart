import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/bottom_nav_bar.dart';
import 'package:myapp/page/rgb.dart';
import 'package:myapp/page/schedule.dart';
import 'package:myapp/page/homepage.dart';
import 'package:myapp/utils.dart';


class pageNav extends StatefulWidget {
  const pageNav({super.key});

  @override
  State<pageNav> createState() => _pageNavState();
}

class _pageNavState extends State<pageNav> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),

    RGB(),

    Schedule(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
}
}
