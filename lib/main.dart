import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jam/signin.dart';

//import 'package:prodeck/pages/forgot_pass.dart';

//import 'package:prodeck/pages/welcome_screen.dart';
//import 'package:prodeck/signup.dart';
//import 'package:flutter_cubit/pages/wecome_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import 'firebase_options.dart';

import 'package:jam/pages/my_home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     
      home: MyHomePage(),
      //home: LoginPage(),
      //home: AuthPage(),
      // home: TimerScreen(),
      // home: ForgotPasswordScreen(),
      //home: TaskListPage(),

      // home: SignUpPage(),
      //home: ForgotPass(),
      //home: HomeScreen(),
      //home: ProfilePage(),
    );
  }
}
