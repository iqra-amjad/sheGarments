import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:she_garments/authentications/loginScreen.dart';
import 'package:she_garments/firebase_options.dart';
import 'package:she_garments/navigationScreens/bottomNavigationBar.dart';
import 'package:she_garments/splastScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures that the binding is initialized
  await Firebase.initializeApp(); // Initializes Firebase
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: homeScreen(),
    );
  }
}
