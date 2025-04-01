// import 'dart:convert';
// import 'dart:js';
// import 'package:flutter/material.dart';
//
// import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';
//
//
//
// import 'package:random_string/random_string.dart';
//
//
// import '../../components/listitemsclass.dart';
//
//
// class ViewComponent extends StatefulWidget {
//
//
//   ViewComponent({ this.firstName, this.lastName, this.department, this.procedure, this.id, this.doctorName, this.gender, this.state, this.city, this.createdAt, this.nationalId, this.preferredApppointmentDate, this.preferredAppointmentTime, this.status, this.updatedAt});
//
//
//   final String? firstName;
//   final String? lastName;
//   final String? department;
//   final String? procedure;
//   final String? id;
//   final String? doctorName;
//   final String? gender;
//   final String? state;
//   final String? city;
//   final String? createdAt;
//   final String? nationalId;
//   final String? preferredApppointmentDate;
//   final String? preferredAppointmentTime;
//   final String? status;
//   final String? updatedAt;
//
//
//
//
//   ViewComponent({
//     Key ? key,
//     required this.firstName,
//     required this.lastName,
//     required this.department,
//     required this.procedure,
//     required this.id,
//     required this.doctorName,
//     required this.gender,
//     required this.state,
//     required this.city,
//     required this.createdAt,
//     required this.nationalId,
//     required this.preferredApppointmentDate,
//     required this.preferredAppointmentTime,
//     required this.status,
//     required this.updatedAt,
//   }) :
//         super(key: key);
//
//   State<ViewComponent> createState() => _ViewComponentState();
//
//
// }
//
// class _ViewComponentState extends State<ViewComponent>with SingleTickerProviderStateMixin{
//
//
//
//   //api method
//   Future<void>? rescheduleCall() async{
//     final url = Uri.parse("http://20.164.214.226:3060/mongo/bookings/rescheduleBooking");
//
//     //TODO: Once retrieved populate object data with appointment data
//     try{
//       final response = await http.patch(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           "streetAddress1": addressController,
//           "selectedCountryCode": zipCodeController,
//           "first_name": first_NameController,
//           "last_name": last_NameController,
//           "national_id": national_idController,
//           "preferred_appointment_date": appointmentDate.toString(),
//           "preferred_appointment_time": appointmentTime.toString(),
//           "email": 'mabuzajennifer@yahoo.com',
//           "doctorName": preferredDoctor,
//
//           "language": language.toString(),
//           "doctorId": doctorIdController.text,
//           "disability": disabilityController.text,
//           "other_services": 'llllll',
//           "status": "Pending",
//           "gender": 'female',
//           "city": 'Johannesburg',
//           "country": 'South Africa',
//           "state": 'Maboneng',
//           "phone_number": phone_numberController.text,
//           "patient_Id": patient_IdController.text,
//           "department": department,
//           "translator": translator,
//           //"communication": communication,
//           "sensory": sensory,
//           "cognitive": cognitive,
//           "procedure": procedure,
//           "id" : id,
//           "zip_code": zipCodeController,
//         }),);
//
//
//
//
//
//
//
//       if (response.statusCode == 201) {
//         print('Data updated successfully');
//       } else {
//         print('Request failed with status: ${response.statusCode}');
//       }
//     }catch(e){
//       print(e.toString());
//     }
//   }
//
//
//
//   //reschedule codes
//
//   //controllers
//   final procedureController = TextEditingController();
//
//   //variables
//   String? departmentVariable;
//   String? procedureVariable;
//   String? doctorVariable;
//
//
//
// //payment components
// //controllers
//   final creditcardnameController = TextEditingController();
//   final creditcardnumberController = TextEditingController();
//   final creditcardcvcController = TextEditingController();
//   final creditcardaddressController = TextEditingController();
//   final creditcardamountController = TextEditingController();
//   final medicalaidcompanyController = TextEditingController();
//   final medicalpolicyholderController = TextEditingController();
//   final medicalpolicynumberController = TextEditingController();
//   final medicalmembernumberController = TextEditingController();
//   final medicalinsuranceplanController = TextEditingController();
//   final medicalaidamountController = TextEditingController();
//
// //variables
//   double? cashcomponentAmount;
//   String? creditcardname;
//   String? creditcardnumber;
//   String? creditcardcvc;
//   DateTime creditcardexpirydate = DateTime.now();
//   String? creditcardaddress;
//   String? creditcardamount;
//   String? medicalaidinsurancecompany;
//   String? medicalaidpolicyholder;
//   String? medicalaidpolicynumber;
//   String? medicalaidinsuranceplan;
//   DateTime medicalaidexpirydate = DateTime.now();
//   String? medicalaidinsurancemembernumber;
//   String? medicalaidamount;
//   double cashcomponentamount = 0;
//   String? language = 'English';
//   String id = randomAlphaNumeric(4);
//
//
//
//
// //controllers
//   final _dateFormat = DateFormat('yyyy/MM/dd');
//   final first_NameController = TextEditingController();
//   final last_NameController = TextEditingController();
//   final national_idController = TextEditingController();
//   final addressController = TextEditingController();
//   final zipCodeController = TextEditingController();
//   final symptomsController = TextEditingController();
//   final disabilityController = TextEditingController();
//   final patient_IdController = TextEditingController();
//   final phone_numberController = TextEditingController();
//   final doctorIdController = TextEditingController();
//
// //radio buttons value
//   int genderRadio = 1;
//   int optionRadio0 = 1;
//   int optionRadio1 = 1;
//   int optionRadio2 = 1;
//   int optionRadio3 = 1;
//   int optionRadio4 = 1;
//   int optionRadio5 = 1;
//
// //date items
//   DateTime appointmentDate = DateTime.now();
//   TimeOfDay appointmentTime = TimeOfDay.now();
//
// //variables
//   String? first_Name;
//   String? last_Name;
//   String? national_id;
//   String? gender;
//   String? streetAddress;
//   String? country;
//   String? city;
//   String? state;
//   String? zipCode;
//   String? appliedBefore;
//   String? preferredDoctor;
//   String? department;
//   String? translator;
//   String? accomodation;
//   String? communication;
//   String? sensory;
//   String? cognitive;
//   String? procedure;
//
//
//
//   @override
//
//   Widget _rescheduleForm(BuildContext context) => Padding(
//     padding: const EdgeInsets.all(13.0),
//     child: SingleChildScrollView(
//       physics: ClampingScrollPhysics(),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Text('Department'),
//           DropDownField(
//             value: departmentVariable,
//             hintText: 'Select Department',
//             dataSource: ListItems().departmentOptions,
//             onChanged: (value){
//               setState(() {
//                 departmentVariable = value;
//               });
//             },
//             textField: 'label',
//             valueField: 'value',
//           ),
//
//           SizedBox(height: 5,),
//
//           Text('Procedure'),
//           TextFormField(
//             controller: procedureController,
//             decoration: InputDecoration(
//               labelText: 'Procedure',
//               hintText: 'Procedure',
//               suffixIcon: procedureController.text.isEmpty
//                   ? Container(width:0)
//                   : IconButton(
//                 icon:Icon(Icons.close),
//                 onPressed: () => procedureController.clear(),
//               ),
//               contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8)
//               ),
//               alignLabelWithHint: true,
//             ),
//             onSaved: (value) => setState(() => procedureVariable = value),
//             validator: (value){
//               if(value!.isEmpty){
//                 return 'procedure is required';
//               }else{
//                 return null;
//               }
//             },
//           ),
//
//           SizedBox(height: 5,),
//
//           Text('Preferred Date'),
//           Column(
//             children: <Widget>[
//               Text(
//                 "${appointmentDate.year} - ${appointmentDate.month} - ${appointmentDate.day}",
//               ),
//               MaterialButton(
//                 child: Text('Choose Date'),
//                 color: Colors.blueGrey,
//                 hoverColor: Colors.lightBlueAccent,
//                 elevation: 4,
//                 onPressed: () async{
//                   final DateTime? dateTime = await showDatePicker(
//                     context: context,
//                     initialDate: appointmentDate,
//                     firstDate: DateTime(2000),
//                     lastDate: DateTime(3000),
//                   );
//
//                   if(dateTime != null){
//                     setState(() {
//                       appointmentDate = dateTime;
//                     });
//                   }
//                 },
//               ),
//             ],
//           ),
//
//           SizedBox(height: 5,),
//
//           Text('Preferred Time'),
//           Column(
//             children: <Widget>[
//               Text(
//                 "${appointmentTime.hour}: ${appointmentTime.minute}",
//               ),
//               MaterialButton(
//                 child: Text('Choose Time'),
//                 color: Colors.blueGrey,
//                 hoverColor: Colors.lightBlueAccent,
//                 elevation: 4,
//                 onPressed: () async{
//                   final TimeOfDay? time = await showTimePicker(
//                     context: context,
//                     initialTime: appointmentTime,
//                     initialEntryMode: TimePickerEntryMode.dial,
//                   );
//
//                   if(time != null){
//                     setState(() {
//                       appointmentTime = time;
//                     });
//                   }
//                 },
//               ),
//             ],
//           ),
//
//           SizedBox(height: 5,),
//
//           Text('Preferred Doctor'),
//           DropDownField(
//             value: doctorVariable,
//             hintText: 'Select Doctor',
//             dataSource: ListItems().doctorOptions,
//             onChanged: (value){
//               setState(() {
//                 doctorVariable = value;
//               });
//             },
//             textField: 'label',
//             valueField: 'value',
//           ),
//
//           SizedBox(height: 5,),
//
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     elevation: 0,
//                     primary: Colors.redAccent,
//                   ),
//                   child: Text('Cancel'),
//                   onPressed: () => Navigator.pop(context as BuildContext),
//                 ),
//
//                 ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       elevation: 0,
//                       primary: Colors.green,
//                     ),
//                     child: Text('Okay'),
//                     onPressed: () {
//                       rescheduleCall();
//                       Navigator.pop(context as BuildContext);
//                     }
//                 ),
//               ]
//           ),
//
//         ],
//       ),
//     ),
//   );
//
//   //bottom modal sheet
//   void _modalSheet(context) => showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context){
//       return Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//             height: MediaQuery.of(context).size.height * 0.7,
//             child: _rescheduleForm(context)
//         ),
//       );
//     },
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
//
// }
//
//
