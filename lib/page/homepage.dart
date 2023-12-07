import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/bottom_nav_bar.dart';
import 'package:myapp/page/rgb.dart';
import 'package:myapp/page/schedule.dart';
import 'package:myapp/utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          // homepageLbK (39:281)
          width: double.infinity,
          height: 844 * fem,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff000000)),
            color: Color(0xff176b87),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0 * fem, 4 * fem),
                blurRadius: 2 * fem,
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                // background1Df7 (39:282)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  width: 390 * fem,
                  height: 844 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // intersectjdT (I39:282;22:31)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 206.93 * fem),
                        width: 390 * fem,
                        height: 373.54 * fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-ptq.png',
                          width: 390 * fem,
                          height: 373.54 * fem,
                        ),
                      ),
                      Container(
                        // intersectTJZ (I39:282;22:33)
                        width: 390 * fem,
                        height: 263.53 * fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-NCy.png',
                          width: 390 * fem,
                          height: 263.53 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // FLoating GRafik
                left: 30 * fem,
                top: 191 * fem,
                child: Container(
                  width: 330 * fem,
                  height: 300 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x19000000)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(25 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x7f000000),
                        offset: Offset(-4 * fem, 5 * fem),
                        blurRadius: 10 * fem,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // waterconditionTC5 (47:92)
                left: 31.5 * fem,
                top: 150 * fem,
                child: Center(
                  child: Align(
                    child: SizedBox(
                      width: 200 * fem,
                      height: 25 * fem,
                      child: Text(
                        'Water Condition',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffeeeeee),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // hello71j (63:623)
                left: 50.5 * fem,
                top: 59.5 * fem,
                child: Container(
                  width: 400 * fem,
                  height: 70.5 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // hellodEy (51:134)
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 8.5 * fem),
                        width: double.infinity,
                        child: Text(
                          'Hello,',
                          textAlign: TextAlign.left,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 27 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // alvinhEq (54:65)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          user.email!,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // buttonoHs (58:81)
                left: 33 * fem,
                top: 523 * fem,
                child: Container(
                  width: 330 * fem,
                  height: 41 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x7f000000),
                        offset: Offset(-5 * fem, 4 * fem),
                        blurRadius: 10 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Feed',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 30 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff176b87),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
