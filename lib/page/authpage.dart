import 'package:flutter/material.dart';
import 'package:myapp/components/page_navigator.dart';
import 'package:myapp/page/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/page/homepage.dart';
import 'package:myapp/page/regispage.dart';

  class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const pageNav();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}