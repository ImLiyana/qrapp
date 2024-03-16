import 'package:flutter/material.dart';
import 'package:qrapp/profile.dart';

class Try extends StatefulWidget {
  const Try({Key? key}) : super(key: key);

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.teal,
        body:Column(
          children: [
            TextField(decoration: InputDecoration(
              enabledBorder: OutlineInputBorder( gapPadding: kBottomNavigationBarHeight,
                borderSide:BorderSide(color: Colors.white),
              ),


            ),),

      ElevatedButton(onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
      }, child:Text('go'),
    style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    side: BorderSide(
    width: 3.0,
    color: Colors.white,
    ),
    ),
      ),
          ],
        )
    );
  }
}
