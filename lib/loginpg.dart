

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
          SizedBox(height: 30,),
          TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),

            hintText: 'Enter email address',
          ),),
          SizedBox(height: 40,),
          TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
            borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter password',
          ),),
          SizedBox(height: 30,),
       ElevatedButton(onPressed:(){}, child:Text('login'),style: ElevatedButton.styleFrom(
         primary: Colors.teal,
         side: BorderSide(
           width: 3.0,
           color: Colors.white,
         ),
       ),),
        SizedBox(height: 30,),
        Text('Dont have an account?Register',style:TextStyle(color:Colors.white,),),
        ],
      ),
      );
  }
}
