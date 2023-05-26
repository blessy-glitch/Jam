import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jam/home.dart';
import 'package:jam/pages/login_or_reg.dart';
// ignore: unused_import
import 'package:jam/signin.dart';

// ignore: unused_import
import 'package:jam/pages/forgotpass.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  /* void forgotPassword(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ForgotPasswordScreen(
        key: UniqueKey(),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ));
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //User Logged in

          if (snapshot.hasData) {
            return const HomeScreen();
          }

          //User not Logged in

          else {
            return const LoginOrReg();
          }
        },
      ),
    );
  }
}
