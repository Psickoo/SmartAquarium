import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class RGB extends StatelessWidget {
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
          // rgb4MF (63:584)
          width: double.infinity,
          height: 844 * fem,
          decoration: BoxDecoration(
            color: Color(0xff176b87),
          ),
          child: Stack(
            children: [
              Positioned(
                // background2kjs (63:585)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  width: 390 * fem,
                  height: 844 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // intersectUA5 (I63:585;22:37)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 235.4 * fem),
                        width: 390 * fem,
                        height: 302.6 * fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-g73.png',
                          width: 390 * fem,
                          height: 302.6 * fem,
                        ),
                      ),
                      Container(
                        // intersectNmF (I63:585;22:40)
                        width: 390 * fem,
                        height: 306 * fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-1sf.png',
                          width: 390 * fem,
                          height: 306 * fem,
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
