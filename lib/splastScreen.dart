import 'dart:async';
import 'package:flutter/material.dart';
import 'package:she_garments/authentications/loginScreen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState(); // Correctly call the super class's initState


    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(width: 150,height: 150,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://newshegarments.com/wp-content/uploads/2024/09/she_0000_Group-1-copy.png',),
            ),
          )
      ),
    );
  }
}

