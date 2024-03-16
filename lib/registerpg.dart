import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:qrapp/loginpg.dart';


class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController name =TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password =TextEditingController();
  void register()async{
    print(name.text);
    print(rollno.text);
    print(email.text);
    print(password.text);
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    var response =await http.post(
      uri,
      headers:<String,String>{
        'Content-Type':'application/json;charset=UTF-8',
      },
      body: jsonEncode({
        'name':name.text,
        'email':email.text,
        'rollno':rollno.text,
        'password':password.text,
      })
    );
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data['message']);
    if(response.statusCode==200){
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );}
    else{
     
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['message'])));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('registration',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
          SizedBox(height: 30,),
          TextField(
            controller: name,
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),

            hintText: 'Enter your name',
          ),),
          SizedBox(height: 40,),
          TextField(
            controller: rollno,
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter your rollno',
          ),),

          SizedBox(height: 30,),
          TextField(
            controller: email,
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter your email',
          ),),
          SizedBox(height: 30,),
          TextField(
            controller: password,
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter your password',
          ),),
          SizedBox(height: 30,),
          ElevatedButton(onPressed:(){register();}, child:Text('register'),style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            side: BorderSide(
              width: 3.0,
              color: Colors.white,
            ),
          ),),

        ],
      ),
    );



  }
}
