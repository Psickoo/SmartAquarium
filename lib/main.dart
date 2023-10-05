import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page/logo.dart';
// import 'package:myapp/page/homepage.dart';
// import 'package:myapp/page/schedule.dart';
// import 'package:myapp/page/loginpage.dart';
// import 'package:myapp/page/about.dart';
// import 'package:myapp/page/rgb.dart';
// import 'package:myapp/page/regispage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
