import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:myapp/utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: StreamBuilder(
        stream: databaseReference.onValue,
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.data != null &&
              snapshot.data?.snapshot.value != null) {
            Map<dynamic, dynamic> data =
                (snapshot.data?.snapshot.value as Map<dynamic, dynamic>?) ?? {};

            // Retrieve values of 'ph', 'temp', and 'stepperControl'
            Object? phValue = data['ph'];
            Object? tempValue = data['temp'];
            Object? stepperControlValue = data['stepperControl'];

            // Handle null values and set default values if needed
            double ph =
                phValue != null ? double.parse(phValue.toString()) : 0.0;
            double temp =
                tempValue != null ? double.parse(tempValue.toString()) : 0.0;
            int stepperControl = stepperControlValue != null
                ? int.parse(stepperControlValue.toString())
                : 0;

            // Use the retrieved values
            Color buttonColor = stepperControl == 1 ? Colors.red : Colors.white;

            return Container(
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
                                      0 * fem, 0 * fem, 0 * fem, 206.93 * fem),
                                  width: 390 * fem,
                                  height: 373.54 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/intersect-ptq.png',
                                    width: 390 * fem,
                                    height: 373.54 * fem,
                                  ),
                                ),
                                Container(
                                  width: 390 * fem,
                                  height: 263.53 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/intersect-NCy.png',
                                    width: 390 * fem,
                                    height: 263.53 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30 * fem,
                          top: 191 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                      0 * fem, 12 * fem, 0 * fem, 0 * fem),
                            width: 330 * fem,
                            height: 300 * fem,
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
                              children: [
                                Text(
                                  ph < 7 || ph > 8
                                      ? 'Bad Water Condition'
                                      : 'Good Water Condition',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2125 * ffem / fem,
                                    color: ph < 7 || ph > 8
                                        ? Colors.red
                                        : Colors.green,
                                  ),
                                ),
                                Image.asset(
                                  'assets/page-1/images/logo.png',
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'PH: ${ph.toString()} | Temperature: ${temp.toString()}',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff176b87),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 31.5 * fem,
                          top: 150 * fem,
                          child: Center(
                            child: Align(
                              child: SizedBox(
                                width: 200 * fem,
                                height: 25 * fem,
                                child: Text(
                                  'Water Condition',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 20 * fem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xffeeeeee),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50.5 * fem,
                          top: 59.5 * fem,
                          child: Container(
                            width: 400 * fem,
                            height: 70.5 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 8.5 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Hello,',
                                    textAlign: TextAlign.left,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 27 * ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    user.email!,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 33 * fem,
                          top: 523 * fem,
                          child: ElevatedButton(
                            onPressed: () {
                              feedFish();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              shadowColor: Color(0x7f000000),
                              elevation: 5 * fem,
                              minimumSize: Size(330 * fem, 41 * fem),
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center,
                            ),
                            child: Container(
                              width: 330 * fem,
                              height: 41 * fem,
                              alignment: Alignment.center,
                              child: Text(
                                'Feed',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 30 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff176b87),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            // Loading indicator or default UI when data is not available
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  void feedFish() {
    // Update 'stepperControl' in Firebase Realtime Database
    databaseReference
        .child('stepperControl')
        .set(1); // You can set any value you want
  }
}
