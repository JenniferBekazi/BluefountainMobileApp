import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
import 'package:flutter/material.dart';

class BurialCard2 extends StatelessWidget {
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

  BurialCard2({
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
  Widget build(BuildContext context) {
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
                  // Text(
                  //   doctorEmail!,
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 13,
                  //   ),
                  // ),
                  SizedBox(height: 5,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.store, size: 15, ),
                      SizedBox(width: 9,),
                      Text(doctorSpeciality!,
                          style: TextStyle(
                              fontSize: 15, )),]),

                      Row(
                        children: [
                          Icon(Icons.star_border_rounded, size: 15, ),
                          SizedBox(width: 9,),
                          Text(doctorFirm!,
                              style: TextStyle(
                                  fontSize: 15,)),
                        ],
                      ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_box, size: 15, ),
                      SizedBox(width: 9,),
                      Text(doctorNumber!,
                          style: TextStyle(
                              fontSize: 15,)),

                    ],
                  ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.card_giftcard, size: 15, ),
                              SizedBox(width: 9,),
                              Text(doctorGender!,
                                  style: TextStyle(
                                      fontSize: 15,)),
                            ],
                          ),





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



                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: ElevatedButton(
                            child: Text('View'),
                            onPressed: viewFunction,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue,
                                elevation: 0,
                                minimumSize: Size(10, 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                        ),
                      ]
                  ),
                ],
              ),


          ]
              ),
        ),
      ),
    ),
    ),
    );
  }
}
