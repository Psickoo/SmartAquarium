import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/page_navigator.dart';
import 'package:myapp/utils.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff053B50),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => pageNav()));
          },
        ),
      ),
      body: Container(
        // aboutckq (63:661)
        width: double.infinity,
        height: 844 * fem,
        decoration: BoxDecoration(
          color: Color(0xff176b87),
        ),
        child: Stack(
          children: [
            Positioned(
              // background1vFj (63:662)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 390 * fem,
                height: 844 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // intersectdfw (I63:662;22:31)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 206.93 * fem),
                      width: 390 * fem,
                      height: 373.54 * fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-uMj.png',
                        width: 390 * fem,
                        height: 373.54 * fem,
                      ),
                    ),
                    Container(
                      // intersectLKT (I63:662;22:33)
                      width: 390 * fem,
                      height: 263.53 * fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-VoF.png',
                        width: 390 * fem,
                        height: 263.53 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // aboutFxD (63:663)
              left: 68.5 * fem,
              top: 67.5 * fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 92 * fem,
                    height: 37 * fem,
                    child: Text(
                      'About',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // libraryWt9 (77:198)
              left: 69.5 * fem,
              top: 218.5 * fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 106 * fem,
                    height: 37 * fem,
                    child: Text(
                      'Library',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // developerzHX (77:199)
              left: 71.5 * fem,
              top: 355.5 * fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 152 * fem,
                    height: 37 * fem,
                    child: Text(
                      'Developer',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
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
