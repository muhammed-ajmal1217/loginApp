import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLogin();
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
    await  Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>ScreenLogin(),),);
  }
}