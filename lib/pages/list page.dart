import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (title: Text('List'),
      backgroundColor: Colors.black,
      actions: [
        IconButton(onPressed: (){
          signOut(context);
        }, icon: Icon(Icons.exit_to_app)),
      ],
      
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx,index) {
           return ListTile(
              title:Text('Person$index'),
              subtitle: Text('Hello i am using whats app...'),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 58, 58, 58),

              ),
              trailing: Text('1$index:00.am'),
              
              
              );
          },
          separatorBuilder: (ctx,index){
            return Divider();
          }, 
          itemCount: 20,)),
      
      );
  }
  signOut(BuildContext ctx){
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>ScreenLogin()), (route) => false);
  }
  
}