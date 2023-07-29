import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';

// ignore: constant_identifier_names
const SAVE_KEY_NAME = 'UserLoggedIn';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return  MaterialApp(
      title: 'LoginPage',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
         ),
         home: const ScreenSplash(),
    );
      
    
  }
}