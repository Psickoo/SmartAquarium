import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page/regispage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // pop the loading circle when success
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle when catch error
      Navigator.pop(context);
      // print(e.code);
      // WRONG EMAIL
      if (e.code == 'invalid-email') {
        // print('No user found for that email.');
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'invalid-login-credentials') {
        // print('Wrong password provided for that user.');
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color.fromARGB(255, 66, 146, 167),
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color.fromARGB(255, 66, 146, 167),
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // loginpageXyB (11:13)
            width: double.infinity,
            height: 844 * fem,
            decoration: BoxDecoration(
              color: Color(0xff176b87),
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
                  top: 180 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        30 * fem, 40 * fem, 30 * fem, 10 * fem),
                    width: 300 * fem,
                    height: 500 * fem,
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
                                  0 * fem, 0 * fem, 5 * fem, 27 * fem),
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
                            margin: EdgeInsets.fromLTRB(
                                4 * fem, 4 * fem, 4 * fem, 12 * fem),
                            padding: EdgeInsets.fromLTRB(
                                25 * fem, 0 * fem, 10 * fem, 0 * fem),
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
                                SizedBox(width: 15 * fem),
                                Expanded(
                                    child: TextFormField(
                                  controller: _emailController,
                                  style: TextStyle(fontSize: 12 * fem),
                                  decoration: InputDecoration(
                                    hintText: 'Enter your email',
                                    border: InputBorder.none,
                                  ),
                                ))
                                // Add any text or additional widgets here if needed.
                              ],
                            ),
                          ),
                          Container(
                            // passwordm4D (I34:320;13:64)
                            margin: EdgeInsets.all(4 * fem),
                            padding: EdgeInsets.fromLTRB(
                                25 * fem, 0 * fem, 10 * fem, 0 * fem),
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
                                SizedBox(width: 15 * fem),
                                Expanded(
                                    child: TextFormField(
                                  controller: _passwordController,
                                  style: TextStyle(fontSize: 12),
                                  decoration: InputDecoration(
                                    hintText: 'Enter your password',
                                    border: InputBorder.none,
                                  ),
                                  obscureText:
                                      true, // Set this property to true
                                ))
                                // Add any text or additional widgets here if needed.
                              ],
                            ),
                          ),
                          SizedBox(height: 10 * fem),
                          Container(
                            // loginbuttonxuP (30:22)
                            margin: EdgeInsets.fromLTRB(
                                5 * fem, 10 * fem, 5 * fem, 5 * fem),
                            child: TextButton(
                              onPressed: () {
                                signUserIn();
                              },
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
                          SizedBox(height: 5 * fem),
                          Container(
                            // signupbuttonndX (34:10)
                            margin: EdgeInsets.fromLTRB(
                                45 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // newuserX5K (34:6)
                                  margin: EdgeInsets.all(5 * fem),
                                  child: Text(
                                    'New User ?',
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegisPage()),
                                    );
                                  },
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
                          Container(
                            // orzau (37:280)
                            margin: EdgeInsets.fromLTRB(
                                22 * fem, 34.5 * fem, 22 * fem, 34.5 * fem),
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
                                        fontSize: 10 * ffem,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
