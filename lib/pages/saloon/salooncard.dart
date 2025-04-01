import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
import 'package:flutter/material.dart';

class SaloonCard extends StatelessWidget{
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

  SaloonCard({
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
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.03),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    doctorName! ,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,

                    ),

                  ),


              SizedBox(height: 0,),

                  Padding(
                    padding: EdgeInsets.only(right:235.0, ),
                    child: Image.asset(
                      imagePath!,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),

                  ),

                  SizedBox(height: 0,),

                 // Row(
                 //   children: [
                 //     Padding(
                 //         padding: EdgeInsets.only(right:275.0, bottom: 30,),
                 //       child: Text(doctorEmail!, style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold,)),
                 //         ),
                 //
                 //
                 //
                 //
                 //   ],
                 //
                 //
                 // ),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(doctorEmail!, style: TextStyle(fontSize: 25,  fontWeight: FontWeight.bold,)),
                  Icon(Icons.star, color: Colors.amber,),
                  Text(
                    doctorAge! ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,

                    ),

                  ),],

            ),
                  Divider(),
                  SizedBox(height: 13,),



                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [

                     Text(doctorFirm!, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),

                     Text(doctorNumber!, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),],

                 ),
                  Divider(),
                  SizedBox(height: 10,),
                  Padding(
                    padding:  EdgeInsets.only(left:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(doctorLocation!, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                        Text(doctorGender!, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),



                      ],

                    ),
                  ),

                  Divider(),
                  SizedBox(height: 10,),
                  Padding(
                    padding:  EdgeInsets.only(left:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(doctorJob!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                        Text(doctorSpeciality!, style: TextStyle(fontSize: 15)),




                      ],

                    ),
                  ),




                  SizedBox(height: 5,),
                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedButton(
                        child: Text('Book', style: TextStyle(fontSize: 15, color: Colors.white),),

                        onPressed: bookFunction,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),

                      SizedBox(height: 0,),

                      OutlinedButton(
                        child: Text('More Info', style: TextStyle(fontSize: 15, color: Colors.white),),
                        onPressed: viewFunction,
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            elevation: 3,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),
                    ],
                  ),
                ],

              ),
            ),
          ),
        )
    );
  }
}