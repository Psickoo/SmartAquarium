import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // logovAu (8:2)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 844*fem,
          decoration: BoxDecoration (
            border: Border.all(color: Color(0xff000000)),
            color: Color(0xffffffff),
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
                // backgroundUVF (22:35)
                left: 0*fem,
                top: 0*fem,
                child: Container(
                  width: 390*fem,
                  height: 844*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // intersectxvD (22:27)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 233.29*fem),
                        width: 390*fem,
                        height: 329.71*fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-Xhb.png',
                          width: 390*fem,
                          height: 329.71*fem,
                        ),
                      ),
                      Container(
                        // intersectf3w (22:29)
                        width: 390*fem,
                        height: 281*fem,
                        child: Image.asset(
                          'assets/page-1/images/intersect-tPT.png',
                          width: 390*fem,
                          height: 281*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // untitledartworkremovebgpreview (I43:60;43:58)
                left: 10*fem,
                right: 10*fem,
                top: 283*fem,
                child: Align(
                  child: SizedBox(
                    width: 450*fem,
                    height: 313.8*fem,
                    child: Image.asset(
                      'assets/page-1/images/untitledartwork-removebg-preview-1.png',
                      fit: BoxFit.cover,
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