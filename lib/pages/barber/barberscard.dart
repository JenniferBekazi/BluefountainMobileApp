

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barbers.dart';
import 'package:flutter/material.dart';

class BarberCard extends StatelessWidget{
  final String? imagePath;
  final String? doctorName;
  final String? doctorLocation;
  final String? doctorNumber;
  final viewFunction;
  final bookFunction;
  final String? doctorGender;
  final String? doctorFirm;
  final String? doctorEmail;
  final String? doctorSpeciality;
  final String? doctorAge;
  final String? doctorJob;

  BarberCard({
    this.imagePath,
    this.doctorName,
    this.doctorLocation,
    this.doctorNumber,
    this.doctorGender,
    this.doctorFirm,
    this.doctorEmail,
    this.doctorSpeciality,
    this.viewFunction,
    this.bookFunction,
    this.doctorAge,
    this.doctorJob,
  });


  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //Picture Of Doctor
                    ClipRRect(
                      borderRadius: BorderRadius.only(),
                      child: Image.asset(
                        imagePath!,
                        width: 95,
                        height: 95,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 20,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Doctor Name
                        Text(
                          doctorEmail!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),

                        SizedBox(height: 12,),

                        //doctor's location
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, size: 19, color: Colors.orangeAccent,),

                            SizedBox(width: 9,),

                            Text(doctorAge!, style: TextStyle(fontSize: 15),),
                          ],
                        ),

                        SizedBox(height: 13,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.price_change, size: 19, ),

                            SizedBox(width: 9,),

                            Text(doctorName!, style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             ElevatedButton(
                             child: Text('Book'),
                             onPressed: bookFunction,
                             style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23)
                            )
                        ),
                      ),

                      SizedBox(height: 0,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: ElevatedButton(
                          child: Text('More Info'),
                          onPressed: viewFunction,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(23)
                              )
                          ),
                        ),
                      ),
                      ],
                        ),
                  ],

                ),
            ]
            ),
          ),
        )
    ),
        ),
    );
  }
}