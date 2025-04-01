import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
import 'package:flutter/material.dart';

class CarCard2 extends StatelessWidget{
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

  CarCard2({
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
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.02),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    width: 800,
                    // height: 150,
                    child: Image.asset(
                      imagePath!,
                      fit: BoxFit.cover,


                    ),
                  ),

                  SizedBox(height: 13,),
                  Padding(
                    padding: const EdgeInsets.only(left:135.0),
                    child: Text(
                      doctorName!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                    ),
                  ),
                  Divider(),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(doctorEmail!, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

                      Text(doctorSpeciality!, style: TextStyle(fontSize: 15)),

                      Text(doctorNumber!, style: TextStyle(fontSize: 15)),],

                  ),


                  SizedBox(height: 10,),


                ],

              ),
            ),
          ),
        )
    );
  }
}