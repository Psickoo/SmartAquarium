import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/bottom_nav_bar.dart';
import 'package:myapp/page/rgb.dart';
import 'package:myapp/page/schedule.dart';
import 'package:myapp/page/homepage.dart';
import 'package:myapp/page/about.dart';
import 'package:myapp/utils.dart';

class pageNav extends StatefulWidget {
  const pageNav({Key? key}) : super(key: key);

  @override
  State<pageNav> createState() => _pageNavState();
}

void signUserOut() {
  FirebaseAuth.instance.signOut();
}

class _pageNavState extends State<pageNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    RGB(),
    Schedule(),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToAbout() {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AboutPage()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff64CCC5),
      key: _scaffoldKey, // Add this line
      bottomNavigationBar: myNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff053B50),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff053B50),
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                  'assets/page-1/images/untitledartwork-removebg-preview-1-My3.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Color(0xff053B50)),
            ),
           Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.info_outline, color: Colors.white),
                title: Text('About', style: TextStyle(color: Colors.white)),
                onTap: _navigateToAbout,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('LogOut', style: TextStyle(color: Colors.white)),
                onTap: signUserOut,
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
