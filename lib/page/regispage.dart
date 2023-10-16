import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class RegisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _regisController = TextEditingController();
    final _passController = TextEditingController();
    final _confirmPassController = TextEditingController();

    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        // regispage2Ro (11:119)
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
              // background28Uq (34:398)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 390 * fem,
                height: 844 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // intersectqu3 (I34:398;22:37)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 235.4 * fem),
                      width: 390 * fem,
                      height: 302.6 * fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-Luo.png',
                        width: 390 * fem,
                        height: 302.6 * fem,
                      ),
                    ),
                    Container(
                      // intersectxTs (I34:398;22:40)
                      width: 390 * fem,
                      height: 306 * fem,
                      child: Image.asset(
                        'assets/page-1/images/intersect-bZT.png',
                        width: 390 * fem,
                        height: 306 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // floatinglayout6py (19:21)
              left: 45 * fem,
              top: 100 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    28 * fem, 36.46 * fem, 29 * fem, 60 * fem),
                width: 300 * fem,
                height: 550 * fem,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      // registrationLjK (I34:342;34:339)
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 35 * fem),
                        child: Text(
                          'Registration',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 37 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                   Container(
                      // username
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 0 * fem, 8 * fem, 31.17 * fem),
                      // padding: EdgeInsets.fromLTRB(
                      //     0 * fem, 8 * fem, 0 * fem, 8 * fem),
                      width: double.infinity,
                      height: 30.25 * fem,  
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff176b87)),
                        borderRadius: BorderRadius.circular(25 * fem),
                      ),
                      child: Center(
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              controller: _passController,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                hintText: 'Enter Username',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                      ),
                    Container(
                      // passwordVVj (I34:351;34:329)
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 0 * fem, 8 * fem, 31.17 * fem),
                      // padding: EdgeInsets.fromLTRB(
                      //     0 * fem, 8 * fem, 0 * fem, 8 * fem),
                      width: double.infinity,
                      height: 30.25 * fem,  
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff176b87)),
                        borderRadius: BorderRadius.circular(25 * fem),
                      ),
                      child: Center(
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              controller: _passController,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                      ),
                    Container(
                      // passwordp2D (I34:354;34:306)
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 0 * fem, 8 * fem, 31.17 * fem),
                      // padding: EdgeInsets.fromLTRB(
                      // 0 * fem, 8 * fem, 0 * fem, 8 * fem),
                      width: double.infinity,
                      height: 30.25 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff176b87)),
                        borderRadius: BorderRadius.circular(25 * fem),
                      ),
                      child: Center(
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              controller: _confirmPassController,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                    ),
                    Container(
                      // signupLFT (34:357)
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 0 * fem, 8 * fem, 45.33 * fem),
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
                                  'Sign Up',
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
                    Container(
                      // orzau (37:280)
                      margin: EdgeInsets.fromLTRB(
                          19 * fem, 0 * fem, 18 * fem, 34.5 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // line1X53 (34:361)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 17 * fem, 0 * fem),
                            width: 73 * fem,
                            height: 1 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff000000),
                            ),
                          ),
                          Center(
                            // orRgD (34:365)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 17 * fem, 0 * fem),
                              child: Text(
                                'OR',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.6666666667 * ffem / fem,
                                  letterSpacing: -0.15 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // line1v7B (34:362)
                            width: 73 * fem,
                            height: 1 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // icongoogleicon3xV (37:59)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 45 * fem,
                          height: 45 * fem,
                          child: Center(
                            child: Image.asset(
                              'assets/page-1/images/icon-google-icon-93f.png',
                              width: 45 * fem,
                              height: 45 * fem,
                            ),
                          ),
                        ),
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
