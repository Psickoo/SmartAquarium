import 'dart:io';

import'package:firebase_auth/firebase_auth.dart';
import '../firebase_options.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWIthGoogle() async{
    final GoogleSignInAccount? gAcc = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gAcc!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}