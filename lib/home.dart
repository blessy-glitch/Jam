import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jam/pages/login_or_reg.dart';

// ignore: unused_import
import 'package:jam/signin.dart';
//import 'package:prodeck/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;

// sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))
      ]),
      body: Center(
          child: ElevatedButton(
        child: const Text("Logout "),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginOrReg()));
        },
      )),
    );
  }
}