import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';

class RGB extends StatefulWidget {
  @override
  _RGBState createState() => _RGBState();
}

class _RGBState extends State<RGB> {
  final user = FirebaseAuth.instance.currentUser!;
  Color pickerColor = Color.fromARGB(255, 255, 255, 255);
  Color currentColor = Color.fromARGB(255, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: 844 * fem,
          decoration: BoxDecoration(
            color: Color(0xff176b87),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                top: 0 * fem,
                child: Stack(
                  children: [
                    Positioned(
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
                                'assets/page-1/images/intersect-g73.png',
                                width: 390 * fem,
                                height: 302.6 * fem,
                              ),
                            ),
                            Container(
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
                    Positioned(
                      left: 25 * fem,
                      right: 25 * fem,
                      top: 100 * fem,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: 350 * fem,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Label for Color Picker
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Pick a color',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 20 * fem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5 * ffem / fem,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            // Color Picker
                            ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              enableAlpha: false,
                              showLabel: false,
                              pickerAreaHeightPercent: 0.8,
                            ),
                            SizedBox(height: 20),
                            // Button to change color
                            ElevatedButton(
                              onPressed: () {
                                setState(() => currentColor = pickerColor);
                                print(currentColor);
                              },
                              child: Text('Change Color'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20 * fem,
                      right: 20 * fem,
                      top: 50 * fem,
                      child: SizedBox(
                        width: 300 * fem,
                        height: 25 * fem,
                        child: Text(
                          'RGB Selection',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 20 * fem,
                            fontWeight: FontWeight.w800,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffeeeeee),
                          ),
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
    );
  }

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }
}
