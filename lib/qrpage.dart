import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrapp/camerascn.dart';
class Qrpage extends StatefulWidget {
  const Qrpage({Key? key}) : super(key: key);

  @override
  State<Qrpage> createState() => _QrpageState();
}

class _QrpageState extends State<Qrpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle,size: 100,),
            SizedBox(height: 12,),
            Container(
         child:QrImage(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
              height: 200,width: 200,
            color:Colors.white,),
            SizedBox(height: 12,),
            ElevatedButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Scan()),
              );
            }, child: Text('scan'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                side: BorderSide(
                  width: 3.0,
                  color: Colors.white,
                ),
            ),),



          ],
        ),
      ),
    );
  }
}
