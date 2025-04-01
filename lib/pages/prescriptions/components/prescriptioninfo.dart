import 'package:flutter/material.dart';
import '../../components/bottomnavigationbar.dart';

class PrescriptionInfo extends StatelessWidget{
  final String? date;
  final String? medication;
  final String? dosage;
  final String? frequency;
  final String? duration;
  final String? instructions;
  final String? precautions;

  PrescriptionInfo({
    this.date,
    this.medication,
    this.dosage,
    this.frequency,
    this.duration,
    this.instructions,
    this.precautions,
});



  @override
  Widget build(BuildContext contex){
    return Scaffold(
      appBar: AppBar(),
      body: Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(11),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          'Prescription Information',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 10,),

                      Text(
                        medication!, style: TextStyle(fontSize: 16),
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 8,),

                      Text(
                        'Date: ${date!}', style: TextStyle(fontSize: 12),
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 8,),


                      Text(
                        'Dosage: ${dosage!}', style: TextStyle(fontSize: 12),
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 8,),

                      Text(
                        'Frequency: ${frequency!}', style: TextStyle(fontSize: 12),
                      ),


                      SizedBox(height: 8,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 8,),

                      Text(
                        'Duration: ${duration!}', style: TextStyle(fontSize: 12),
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 8,),


                      Text(
                        'Instructions: ${instructions!}', style: TextStyle(fontSize: 12),
                      ),

                      SizedBox(height: 5,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 8,),

                      Text(
                        'Precautions: ${precautions!}', style: TextStyle(fontSize: 12,),maxLines: 3,
                      ),

                      SizedBox(height: 8,),

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 1.0,
                      ),

                      SizedBox(height: 8,),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: NavBar(),
    );
  }
}