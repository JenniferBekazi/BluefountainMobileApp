// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// import '../../models/patientmodel.dart';
//
// class PatientService with ChangeNotifier{
//   PatientService(){
//     getPatient();
//   }
//
//   List<PatientModel>? _patient;
//
//
//   List<PatientModel>? get patient => _patient;
//
//   getPatient() async{
//     try{
//       _patient = await getPatientDetails();
//
//       if(_patient != null){
//         print('Patient Retrieved');
//       }else{
//         print('Patient Retrieval Failed');
//       }
//     }catch (e){
//       print(e.toString());
//     }
//
//   }
//
//   final _user = FirebaseAuth.instance.currentUser;
//
//   Future<List<PatientModel>?> getPatientDetails() async{
//     try{
//       var url = Uri.parse('http://localhost:3001/mongo/onlinebooking');
//
//       final response = await http.get(url);
//
//       if(response.statusCode == 200){
//         return patientModelFromJson(response.body);
//       }else{
//         print(response.statusCode);
//       }
//
//     }catch(e){
//       print('Error: $e');
//     }
//
//   }
//
//   notifyListeners();
// }
//
//
// class PatientConstants {
//   final PatientService patientService;
//
//   PatientConstants(this.patientService);
//
//   String get patientID {
//     return patientService.patient!.personalDetails.id;
//   }
//
//   String get first_Name {
//     return patientService.patient!.personalDetails.first_Name;
//   }
//
//   String get last_Name {
//     return patientService.patient!.personalDetails.last_Name;
//   }
//
//   String get national_Id {
//     return patientService.patient!.personalDetails.national_Id;
//   }
//
//   String get gender {
//     return patientService.patient!.personalDetails.gender;
//   }
//
//
//   String get phoneNumber {
//     return patientService.patient!.contactDetails.phoneNumbers.first.phoneNumber;
//   }
//
//   String get DOB {
//     return patientService.patient!.personalDetails.dateOfBirth.toString();
//   }
//
//   String get email {
//     return patientService.patient!.contactDetails.emailAddresses.first.email;
//   }
//
// }