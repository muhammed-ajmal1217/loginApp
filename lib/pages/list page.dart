import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (title: const Text('List'),
      backgroundColor: Colors.black,
      actions: [
        IconButton(onPressed: (){
          signOut(context);
        }, icon: const Icon(Icons.exit_to_app)),
      ],
      
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx,index) {
           return ListTile(
              title:Text('Person$index'),
              subtitle: const Text('Hello i am using whats app...'),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 58, 58, 58),

              ),
              trailing: Text('1$index:00.am'),
              
              
              );
          },
          separatorBuilder: (ctx,index){
            return const Divider();
          }, 
          itemCount: 20,)),
      
      );
  }
  signOut(BuildContext ctx){
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>const ScreenLogin()), (route) => false);
  }
  // Future<void>checkUserLoggedinlist(BuildContext context)async{
  //   final _sharedPrefs = await SharedPreferences.getInstance();
  //   final _userLoggedinList=_sharedPrefs.getBool(SAVE_KEY_NAME);
  //   if (_userLoggedinList==null||_userLoggedinList==false){
  //     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>ScreenSplash()), (route) => false);

  //   }else{
  //   final _sharedPrefs = await SharedPreferences.getInstance();
  //   await _sharedPrefs.clear();
  //   }


  // }

  // void moveFront(BuildContext ctx)async{

  //   final _sharedPrefs = await SharedPreferences.getInstance();
  //   await _sharedPrefs.clear();

    
  //   Navigator.of(ctx).pushAndRemoveUntil(
  //     MaterialPageRoute(builder: (ctx) => HomePage()),(route)=>false);
    
  }
  
