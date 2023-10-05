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
      child: Container(
        // rgb4MF (63:584)
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
              // background2kjs (63:585)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 390*fem,
                height: 844*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // intersectUA5 (I63:585;22:37)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 235.4*fem),
                      width: 390*fem,
                      height: 302.6*fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-g73.png',
                        width: 390*fem,
                        height: 302.6*fem,
                      ),
                    ),
                    Container(
                      // intersectNmF (I63:585;22:40)
                      width: 390*fem,
                      height: 306*fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-1sf.png',
                        width: 390*fem,
                        height: 306*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // hellosxu (63:622)
              left: 50.5*fem,
              top: 59.5*fem,
              child: Container(
                width: 86*fem,
                height: 70.5*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      // helloiyX (63:586)
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.5*fem),
                        width: double.infinity,
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
                    Container(
                      // alvinHQM (63:587)
                      margin: EdgeInsets.fromLTRB(5.5*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'Alvin',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iconmenubA9 (63:588)
              left: 19*fem,
              top: 24*fem,
              child: Align(
                child: SizedBox(
                  width: 25*fem,
                  height: 18.75*fem,
                  child: Image.asset(
                    'assets/page-1/images/icon-menu-qjw.png',
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