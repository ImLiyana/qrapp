import 'package:flutter/material.dart';


class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('registration',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
          SizedBox(height: 30,),
          TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),

            hintText: 'Enter your name',
          ),),
          SizedBox(height: 40,),
          TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter your rollno',
          ),),

          SizedBox(height: 30,),
          TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter your email',
          ),),
          SizedBox(height: 30,),
          TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
              borderSide:BorderSide(color: Colors.white),
            ),
            hintText: 'Enter your password',
          ),),
          SizedBox(height: 30,),
          ElevatedButton(onPressed:(){}, child:Text('register'),style: ElevatedButton.styleFrom(
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
