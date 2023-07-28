import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Log In',style: TextStyle(fontSize: 20,fontFamily: AutofillHints.addressState,color:const Color.fromARGB(255, 80, 79, 74)),),),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  //icons---------------------------------------------------------
                  Icon(
                    Icons.lock,
                    size: 50,
                    color: Color.fromARGB(255, 65, 64, 64),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Welcome..!',style: TextStyle(fontSize: 30,color: Colors.blueGrey),),
                  SizedBox(
                    height: 50,
                  ),
                      
                  //username----------------------------------------------------------
                      
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value){
                      // if(_isDataMatched){
                      //   return null;
                      // }else{
                      //   return 'Error';
                      // }
                      if(value==null || value.isEmpty){
                        return 'Value is empty';
                      }else{
                        return null;
                      }
                    },
                    
                   
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //password---------------------------------------------------
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      
                    ),
                    validator: (value){
                      // if(_isDataMatched){
                      //   return null;
                      // }else{
                      //   return 'Error';
                      // }
                      if(value==null || value.isEmpty){
                        return 'Value is empty';
                      }else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // login button-------------------------------------
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: !_isDataMatched,
                        child: Text(
                          'Username Password doesnot mach',style: TextStyle(color: Colors.red,)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            chekLogin(context);
                          }else{
                            print('Data Empty');
                          }
                          //chekLogin(context); 
                        },
                        icon: Icon(Icons.check),
                        label: Text('Login'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //forgot password---------------------------------------------
                  Text('ForgotPassword?',style: TextStyle(color: const Color.fromARGB(255, 8, 74, 128)),),
                      
                   SizedBox(
                    height: 20,
                  ),
                  //google , apple logo--------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Image.asset('lib/images/google.png',
                          height: 70,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Image.asset('lib/images/apple.png',
                          height: 50,),
                        ),
                      ],
                    ),
                  ),
                ],
                    
              ),
            ),
          ),
        ),
        
      ),
    );
  }

   void chekLogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password){


      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()),);


    }else{
      // final _errorMessage = 'Username password does not match';
      // ScaffoldMessenger.of(ctx).showSnackBar(
      //   SnackBar(
      //     backgroundColor: Colors.red,
      //     behavior: SnackBarBehavior.floating,
      //     margin: EdgeInsets.all(10),
      //     duration: Duration(seconds: 5),
      //     content: Text(_errorMessage),
      //   ),
      // );
      setState((){
      _isDataMatched = false;

      });
    }
   }
   }