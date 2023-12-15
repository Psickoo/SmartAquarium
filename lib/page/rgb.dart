import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_database/firebase_database.dart';

class RGB extends StatefulWidget {
  @override
  _RGBState createState() => _RGBState();
}

class _RGBState extends State<RGB> {
  final user = FirebaseAuth.instance.currentUser!;
  Color pickerColor = Color(0xff64CCC5);
  Color currentColor = Color(0xff64CCC5);
  final DatabaseReference colorRef = FirebaseDatabase.instance.reference().child('color');


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
                        // padding: EdgeInsets.all(),
                        width: 400 * fem,
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
                          mainAxisSize: MainAxisSize.max,
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
                              portraitOnly: true,
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              hexInputBar: true,
                              pickerAreaBorderRadius: BorderRadius.circular(10),
                              enableAlpha: false,
                              showLabel: false,
                              pickerAreaHeightPercent: 0.8,
                            ),
                            SizedBox(height: 20),
                            // Button to change color
                            ElevatedButton(
                              onPressed: () {
                                setState(() => currentColor = pickerColor);
                                String hexColor = currentColor.value
                                    .toRadixString(16)
                                    .substring(2);
                                // print(hexColor);

                                // Update the color value in the Realtime Database
                                colorRef.set(hexColor);
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
