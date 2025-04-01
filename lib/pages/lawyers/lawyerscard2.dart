import 'package:flutter/material.dart';

class LawyersCard2 extends StatelessWidget{
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

  LawyersCard2({
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
            padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    //Picture Of Doctor
                    ClipRRect(
                      borderRadius: BorderRadius.only(),
                      child: Image.asset(
                        imagePath!,
                        width: 70,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: 10,),

                    Text(
                      doctorName!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,

                      ),
                    ),

                    SizedBox(height: 10,),

                    Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            child: Text('Book'),
                            onPressed: bookFunction,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue,
                                elevation: 0,
                                minimumSize: Size(10, 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),



                          ElevatedButton(
                            child: Text('View'),
                            onPressed: viewFunction,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue,
                                elevation: 0,
                                minimumSize: Size(10, 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                        ]
                    ),











                        //doctor's location




                      ],
                    ),


                ),
              ),
            ),
        )
    );


  }
}