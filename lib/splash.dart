import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkUserLoggedin();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset('lib/images/splash icon.png',height: 200,),
      ),
    );
  }
 
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
   Future<void> gotoLogin()async{
    await  Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx)=>ScreenLogin(),
      ),
    );
  }
  Future<void>checkUserLoggedin() async{
    final sharedPrefs = await SharedPreferences.getInstance();
    final userLoggedin=sharedPrefs.getBool(SAVE_KEY_NAME);
    if (userLoggedin==null||userLoggedin==false){
      gotoLogin();
    } else {
    // ignore: use_build_context_synchronously
    Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder:(ctx)=>const HomePage()));
      
     }
  }
}