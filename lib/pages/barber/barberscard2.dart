import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
import 'package:flutter/material.dart';

class BarberCard2 extends StatelessWidget {
  bool isSwitched = false;
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

  BarberCard2({
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
                  SizedBox(height: 5,),

                  Text(
                    doctorEmail!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 5,),


                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Icon(Icons.store, size: 10, ),
                  //     SizedBox(width: 9,),
                  //     Text(doctorSpeciality!,
                  //         style: TextStyle(
                  //             fontSize: 8, )),]),
                  //
                  //     Row(
                  //       children: [
                  //         Icon(Icons.star_border_rounded, size: 10, ),
                  //         SizedBox(width: 9,),
                  //         Text(doctorFirm!,
                  //             style: TextStyle(
                  //                 fontSize: 8,)),
                  //       ],
                  //     ),
                  //
                  //
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Icon(Icons.add_box, size: 10, ),
                  //     SizedBox(width: 9,),
                  //     Text(doctorNumber!,
                  //         style: TextStyle(
                  //             fontSize: 8,)),
                  //
                  //   ],
                  // ),
                  //
                  //
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Icon(Icons.card_giftcard, size: 10, ),
                  //             SizedBox(width: 9,),
                  //             Text(doctorGender!,
                  //                 style: TextStyle(
                  //                     fontSize: 8,)),
                  //           ],
                  //         ),
                  //
                  //
                  //


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
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
