import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myNavBar extends StatelessWidget {
  const myNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color:Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
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
