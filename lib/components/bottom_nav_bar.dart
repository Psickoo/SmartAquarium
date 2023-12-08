import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  myNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: GNav(
        // backgroundColor: Color(0xff64CCC5),
        color:Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 25,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.lightbulb_outline,
          text: 'RGB',
        ),
        GButton(
          icon: Icons.schedule,
          text: 'Schedule',
        ),
      ]),
    );
  }
}
