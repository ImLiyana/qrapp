

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:qrapp/qrpage.dart';
import 'package:qrapp/registerpg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController rollno=TextEditingController();
  TextEditingController password=TextEditingController();
 Future <void> login()async{

   Uri uri=Uri.parse('https://scnner-web.onrender.com/api/login');
   var response=await http.post(uri,
     headers:<String,String>{
       'Content-Type':'application/json;charset=UTF-8',
     },
     body: jsonEncode({
       'rollno':rollno.text,
       'password':password.text,
     })
   );
   var decodeData=jsonDecode(response.body);
   print(decodeData);
   if(response.statusCode==200){
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => const Qrpage()),
     );}
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
          SizedBox(height: 30,),
          TextField(
            controller: rollno,
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),

              hintText: 'Enter your Rollno',
          ),),
          SizedBox(height: 40,),
          TextField(
            controller: password,
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
            borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter password',
          ),),
          SizedBox(height: 30,),
       ElevatedButton(onPressed:(){
         //Navigator.push(
        //   context,
         //MaterialPageRoute(builder: (context) => const Qrpage()),
       //  );
         login();
       }, child:Text('login'),style: ElevatedButton.styleFrom(
         primary: Colors.teal,
         side: BorderSide(
           width: 3.0,
           color: Colors.white,
         ),
       ),),
        SizedBox(height: 30,),


          Row(
            children:  [
              Text('Dont have an account?',style:TextStyle(color:Colors.white,)),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const register()),
                );

              }, child: Text('regster')),
            ],
          )
        ],
      ),
      );
  }
}
