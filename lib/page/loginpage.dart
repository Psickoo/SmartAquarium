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
        // loginpageXyB (11:13)
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
              // background1dFX (34:405)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 390 * fem,
                height: 844 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // intersectjZT (I34:405;22:31)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 206.93 * fem),
                      width: 390 * fem,
                      height: 373.54 * fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-RhK.png',
                        width: 390 * fem,
                        height: 373.54 * fem,
                      ),
                    ),
                    Container(
                      // intersect34M (I34:405;22:33)
                      width: 390 * fem,
                      height: 263.53 * fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-39j.png',
                        width: 390 * fem,
                        height: 263.53 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // floatingloginAuf (39:322)
              left: 45 * fem,
              top: 243 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(36 * fem, 40 * fem, 37 * fem, 39 * fem),
                width: 300 * fem,
                height: 358 * fem,
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
                child: Container(
                  // loginpage2S5 (19:18)
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        // welcomebackZgu (I34:340;11:54)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 30 * fem),
                          child: Text(
                            'Welcome !',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 40 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // passwordm4D (I34:320;13:64)
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 6 * fem, 23 * fem, 7 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff176b87)),
                          borderRadius: BorderRadius.circular(25 * fem),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/page-1/images/icon-user-qeH.png',
                              width: 20 * fem,
                              height: 20 * fem,
                            ),
                            const SizedBox(width: 45),
                            Expanded(
                                child: TextField(
                              style: TextStyle(fontSize: 28),
                              decoration: InputDecoration(
                                hintText: 'Enter your username',
                                border: InputBorder.none,
                              ),
                            ))
                            // Add any text or additional widgets here if needed.
                          ],
                        ),
                      ),
                      Container(
                        // passwordm4D (I34:320;13:64)
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 6 * fem, 23 * fem, 7 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff176b87)),
                          borderRadius: BorderRadius.circular(25 * fem),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/page-1/images/icon-lock.png',
                              // 'assets/page-1/images/icon-user-qeH.png'
                              width: 20 * fem,
                              height: 20 * fem,
                            ),
                            const SizedBox(width: 45),
                            Expanded(
                                child: TextField(
                              style: TextStyle(fontSize: 28),
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                border: InputBorder.none,
                              ),
                            ))
                            // Add any text or additional widgets here if needed.
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        // loginbuttonxuP (30:22)
                        margin: EdgeInsets.fromLTRB(
                            5 * fem, 5 * fem, 5 * fem, 10 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 33 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff0075ff),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        // signupbuttonndX (34:10)
                        margin: EdgeInsets.fromLTRB(
                            32 * fem, 0 * fem, 5 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // newuserX5K (34:6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 7 * fem, 0 * fem),
                              child: Text(
                                'NEW USER ?',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 15 * ffem,
                                  height: 0.6666666667 * ffem / fem,
                                  letterSpacing: -0.15 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            TextButton(
                              // signupRAh (34:9)
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Sign Up',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 0.6666666667 * ffem / fem,
                                  letterSpacing: -0.15 * fem,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xff0075ff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
