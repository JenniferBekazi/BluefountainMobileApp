import 'package:flutter/material.dart';

class LawyersCard extends StatelessWidget{
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

  LawyersCard({
    this.imagePath,
    this.doctorName,
    this.doctorLocation,
    this.doctorNumber,
    this.doctorGender,
    this.doctorFirm,
    this.doctorEmail,
    this.doctorSpeciality,
    this.viewFunction,
    this.bookFunction
  });


  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
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

                    SizedBox(width: 10,
                    height: 0,),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Doctor Name
                        Padding(
                          padding:  EdgeInsets.only(left: 150.0,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                             crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                onPressed: () => bookFunction(),
                                icon: Icon(Icons.chat_bubble_outline, size: 30),
                              ),


                            ],
                          ),
                        ),



                       Text(
                          doctorName!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,

                          ),
                        ),


                        SizedBox(height: 10,),

                        //doctor's location
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.location_on, size: 19,),

                            SizedBox(width: 9,),

                            Text(doctorLocation!, style: TextStyle(fontSize: 15),),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.person, size: 19, ),

                            SizedBox(width: 9,),

                            Text(doctorGender!, style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        SizedBox(height: 13,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.house, size: 19, ),

                            SizedBox(width: 9,),

                            Text(doctorFirm!, style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        SizedBox(height: 13,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.mail_outline, size: 19, ),

                            SizedBox(width: 9,),

                            Text(doctorEmail!, style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        SizedBox(height: 13,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.library_books_sharp, size: 19, ),

                            SizedBox(width: 9,),

                            Text(doctorSpeciality!, style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        SizedBox(height: 13,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.phone, size: 19, ),

                            SizedBox(width: 9,),

                            Text(doctorNumber!, style: TextStyle(fontSize: 15)),
                          ],
                        ),




                      ],
                    ),
                  ],

                ),
              ),
            ),
          ),
        )
    );
  }
}