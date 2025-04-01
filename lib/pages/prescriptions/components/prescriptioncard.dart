import 'package:flutter/material.dart';

class PrescriptionCard extends StatelessWidget{

  final String? prescriptionName;
  final String? prescriptionID;
  final String? date;
  final viewFunction;

  PrescriptionCard({this.prescriptionName, this.prescriptionID, this.date, this.viewFunction});


  @override
  Widget build(BuildContext context){
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 150,
        height: 80,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue.withOpacity(0.05)
        ),
        child: GestureDetector(
          onTap: viewFunction,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
               Image.asset('icons/pills.png', height: 35, width: 35,),

              SizedBox(width: 5,),

              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(prescriptionName!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,),),

                  SizedBox(height: 5,),

                  Text(prescriptionID!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,),),

                  SizedBox(height: 5,),

                  Text(date!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,),),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}