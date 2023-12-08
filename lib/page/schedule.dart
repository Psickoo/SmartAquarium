import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Schedule extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // scheduleLY1 (63:485)
          width: double.infinity,
          height: 844 * fem,
          decoration: BoxDecoration(
            color: Color(0xff176b87),
          ),
          child: Stack(
            children: [
              Positioned(
                // background1qDs (63:486)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  width: 390 * fem,
                  height: 844 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // intersectY8H (I63:486;22:31)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 206.93 * fem),
                        width: 390 * fem,
                        height: 373.54 * fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-n4q.png',
                          width: 390 * fem,
                          height: 373.54 * fem,
                        ),
                      ),
                      Container(
                        // intersectSDf (I63:486;22:33)
                        width: 390 * fem,
                        height: 263.53 * fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-e57.png',
                          width: 390 * fem,
                          height: 263.53 * fem,
                        ),
                      ),
                    ],
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
