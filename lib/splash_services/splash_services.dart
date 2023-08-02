import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/ui/posts/post_screen.dart';

import '../ui/login_screen.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final fAuth = FirebaseAuth.instance;
    final user = fAuth.currentUser;

    if (user != null) {
      Timer(
          const Duration(seconds: 5),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => PostScreen())));
    } else {
      Timer(
          const Duration(seconds: 5),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen())));
    }
  }
}
