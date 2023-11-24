import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // scheduleLY1 (63:485)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff000000)),
          color: Color(0xff176b87),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset(0*fem, 4*fem),
              blurRadius: 2*fem,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              // background1qDs (63:486)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 390*fem,
                height: 844*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // intersectY8H (I63:486;22:31)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 206.93*fem),
                      width: 390*fem,
                      height: 373.54*fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-n4q.png',
                        width: 390*fem,
                        height: 373.54*fem,
                      ),
                    ),
                    Container(
                      // intersectSDf (I63:486;22:33)
                      width: 390*fem,
                      height: 263.53*fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-e57.png',
                        width: 390*fem,
                        height: 263.53*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // helloMLd (63:489)
              left: 50.5*fem,
              top: 59.5*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 330*fem,
                    height: 37*fem,
                    child: Text(
                      'Hello,',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 30*ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // alvinQZo (63:490)
              left: 56*fem,
              top: 105*fem,
              child: Align(
                child: SizedBox(
                  width: 52*fem,
                  height: 25*fem,
                  child: Text(
                    user.email!,
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iconmenusTP (63:492)
              left: 19*fem,
              top: 24*fem,
              child: Align(
                child: SizedBox(
                  width: 25*fem,
                  height: 18.75*fem,
                  child: Image.asset(
                    'assets/page-1/images/icon-menu.png',
                    width: 25*fem,
                    height: 18.75*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}