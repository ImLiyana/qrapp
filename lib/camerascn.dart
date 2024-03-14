
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrapp/profile.dart';
class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      body:Column(
        children: [
          MobileScanner(
            allowDuplicates: false,
            onDetect: (barcode,args)
    {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));

  }


          ),
          SizedBox(height: 8,),

          ElevatedButton(onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
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
      )


      );

  }
}
