import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../homepage.dart';

class FailureDialog extends StatefulWidget{
  const FailureDialog({Key ? key}): super(key : key);

  State<FailureDialog> createState() => _FailureDialogState();
}

class _FailureDialogState extends State<FailureDialog>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Center(
                child: Text(
                  'Booking Failed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),

              SizedBox(height: 20,),


              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Lottie.asset('animations/declined.json'),
                ),
              ),

              SizedBox(height: 15,),

              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage ()));
                },
                child: Text('OKAY'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: Size(90, 30)
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}