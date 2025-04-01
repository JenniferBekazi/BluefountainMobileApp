// import 'package:flutter/material.dart';
//
// import 'viewpatient.dart';
//
// class DoctorCard extends StatelessWidget {
//   final String? imagePath;
//   final String? patientsName;
//   final String? patientsNumber;
//   final String? patientId;
//   final String? patientEmail;
//   final String? gender;
//   final String? admmisionReason;
//
//   final viewFunction;
//   final bookFunction;
//
//   DoctorCard(
//       {this.gender,
//         this.imagePath,
//         this.patientsName,
//         this.patientsNumber,
//         this.viewFunction,
//         this.bookFunction,
//         this.patientId,
//         this.patientEmail,
//         this.admmisionReason});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 2.0),
//           child: Material(
//               elevation: 2,
//               borderRadius: BorderRadius.circular(0),
//               child: GestureDetector(
//                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => ViewPatient(
//                         patientsName: patientsName,
//                         imagePath: imagePath,
//                         patientEmail: patientEmail,
//                         patientId: patientId,
//                       ))),
//                   child: Container(
//                     padding: EdgeInsets.all(2),
//                     height: 80, // Adjust the desired height
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       // borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Container(
//                       height: 200,
//                       child: Container(
//                         height: 200,
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(200),
//                                     child: Image.asset(
//                                       imagePath!,
//                                       width: 70,
//                                       height: 70,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                       left: 8.0,
//                                     ),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Column(
//                                           crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                           children: [
//                                             Padding(
//                                                 padding:
//                                                 EdgeInsets.only(top: 5.0),
//                                                 child: Text(
//                                                   patientsName!,
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 13,
//                                                   ),
//                                                 )),
//                                             const SizedBox(
//                                               height: 5,
//                                             ),
//                                             Text(
//                                               "Patient ID: ${patientId!}",
//                                               style: TextStyle(
//                                                 fontWeight: FontWeight.w400,
//                                                 fontSize: 11,
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               height: 5,
//                                             ),
//                                             Text(admmisionReason!,
//                                                 style: const TextStyle(
//                                                   fontWeight: FontWeight.w500,
//                                                   fontSize: 11,
//                                                 )),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Text(
//                                         gender!,
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 13,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 8,
//                                       ),
//                                       Text(
//                                         "15",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 13,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 8,
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//
//                 //ListTile(
//                 //   leading: ClipRRect(
//                 //     borderRadius: BorderRadius.circular(50),
//                 //     child: Image.asset(
//                 //       imagePath!,
//                 //       width: 90,
//                 //       height: 90,
//                 //       fit: BoxFit.cover,
//                 //     ),
//                 //   ),
//                 //   title: Column(
//                 //     crossAxisAlignment: CrossAxisAlignment.start,
//                 //     children: [
//
//                 //       ),
//
//                 //        Text(
//                 //         admmisionReason!,
//                 //         style: TextStyle(
//                 //           fontWeight: FontWeight.w400,
//                 //           fontSize: 12,
//                 //         ),
//
//                 //       ),
//                 //     ],
//                 //   ),
//                 //   trailing: Text(
//                 //     'Female',
//                 //     style: TextStyle(fontSize: 16),
//                 //   ),
//                 // )),
//               )),
//         ),
//       ),
//     );
//   }
// }