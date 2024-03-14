import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'
              ),
              radius:56,
            ),
      Text('Ziva filip',
        style: TextStyle(color: Colors.white,fontSize: 30,fontStyle:FontStyle.italic ,fontWeight:FontWeight.bold),

      ),

      Text('Flutter Developer',style:TextStyle(color: Colors.white70,) ,
      ),
      Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal:20 ),
        decoration: BoxDecoration(color: Colors.white),
        child:Row(children: [

          Icon(Icons.email,color: Colors.teal,),
          SizedBox(width: 20,),
          Text('lia@gmail.com',style: TextStyle(color: Colors.cyanAccent),),

        ],)),
            SizedBox(height: 19,),
            Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal:20 ),
                decoration: BoxDecoration(color: Colors.white),
                child:Row(children: [

                  Icon(Icons.phone,color: Colors.teal,),
                  SizedBox(width: 12,),
                  Text('984676454',style: TextStyle(color: Colors.cyanAccent),),

                ],))



          ],
        ),
      ),
    );
  }
}
