import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page/authpage.dart';
import 'package:myapp/page/homepage.dart';
import 'package:myapp/utils.dart';

class RegisPage extends StatefulWidget {
  @override
  _RegisPageState createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  final _regisController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  void signUserUp() async {
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
      if (_passController.text == _confirmPassController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _regisController.text,
          password: _passController.text,
        );
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        Navigator.pop(context);
        passwordNotMatchMessage();
      }
      // pop the loading circle when success
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      print("done");
    } on FirebaseAuthException catch (e) {
      // pop the loading circle when catch error
      Navigator.pop(context);
      print(e.code);
      // WRONG EMAIL
      if (e.code == 'email-already-in-use') {
        // print('No user found for that email.');
        // show error to user
        wrongEmailMessage();
      } else if (e.code == 'invalid-email') {
        invalidEmailMessage();
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
              'Email already in use',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  void invalidEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color.fromARGB(255, 66, 146, 167),
          title: Center(
            child: Text(
              'Wrong Email Format',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  void passwordNotMatchMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color.fromARGB(255, 66, 146, 167),
          title: Center(
            child: Text(
              'Password not match',
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
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  width: 390 * fem,
                  height: 844 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
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
                left: 45 * fem,
                top: 100 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      28 * fem, 36.46 * fem, 29 * fem, 60 * fem),
                  width: 300 * fem,
                  height: 570 * fem,
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
                            Expanded(
                              child: TextFormField(
                                controller: _regisController,
                                style: TextStyle(fontSize: 12 * fem),
                                decoration: InputDecoration(
                                  hintText: 'Enter your email',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                            Expanded(
                              child: TextFormField(
                                controller: _passController,
                                style: TextStyle(fontSize: 12 * fem),
                                decoration: InputDecoration(
                                  hintText: 'Enter your password',
                                  border: InputBorder.none,
                                ),
                                obscureText:
                                      true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            4 * fem, 4 * fem, 4 * fem, 35 * fem),
                        padding: EdgeInsets.fromLTRB(
                            25 * fem, 0 * fem, 10 * fem, 0 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff176b87)),
                          borderRadius: BorderRadius.circular(25 * fem),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _confirmPassController,
                                style: TextStyle(fontSize: 12 * fem),
                                decoration: InputDecoration(
                                  hintText: 'Confirm your password',
                                  border: InputBorder.none,
                                ),
                                obscureText:
                                      true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            8 * fem, 0 * fem, 8 * fem, 45.33 * fem),
                        child: TextButton(
                          onPressed: () {
                            signUserUp();
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
                        margin: EdgeInsets.fromLTRB(
                            22 * fem, 0 * fem, 18 * fem, 34.5 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 17 * fem, 0 * fem),
                              width: 73 * fem,
                              height: 1 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xff000000),
                              ),
                            ),
                            Center(
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
