// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';
//
// import '../../components/bottomnavigationbar.dart';
// import '../../components/listitemsclass.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/components/reschedule.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/components/failuredialog.dart';
//
//
// class View extends StatefulWidget {
//
//
//   final String? firstName;
//   final String? lastName;
//   final String? doctorName;
//   final String? department;
//   final String? procedure;
//   final String? date;
//   final String? time;
//   final String? appointmentid;
//   final String? service;
//
//
//
//
//   View({
//     Key ? key,
//     required this.firstName,
//     required this.lastName,
//     required this.doctorName,
//     required this.department,
//     required this.procedure,
//     required this.date,
//     required this.time,
//     required this.appointmentid,
//     required this.service,
//
//   }) :
//         super(key: key);
//
//   State<View> createState() => _ViewState();
//
//
// }
//
// class _ViewState extends State<View> {
//   //reschedule api call
//   Future<int?> rescheduleAppointment(String app ) async {
//     print(widget.appointmentid);
//     try {
//       var url = Uri.parse(
//           'http://20.164.214.226:3060/mongo/bookings/rescheduleBooking');
//
//       final prevAppointmentSchedule = {
//         "preferred_appointment_date": widget.date,
//         "preferred_appointment_time": widget.time,
//         "department": widget.department,
//         "procedure": widget.procedure,
//         "applied_service": widget.service,
//         "serviceProvider": widget.doctorName,
//       };
//
//       final appointmentSchedule = {
//         "preferred_appointment_date":
//         DateFormat('yyyy-MM-dd').format(appointmentDate),
//         "preferred_appointment_time": appointmentTime.format(context),
//         "department": departmentVariable,
//         "procedure": procedureController.text,
//         "applied_service": appliedServiceController.text,
//
//       };
//       final requestBody = {
//         "appointmentid": widget.appointmentid,
//         "appointmentSchedule": appointmentSchedule,
//         "prevAppointmentSchedule": prevAppointmentSchedule,
//       };
//       print('Request body: $requestBody');
//
//
//       final response = await http.put(
//         url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode(requestBody),
//       );
//
//       var rescheduleSuccess = false;
//       if (response.statusCode == 200) {
//         print('Reschedule Successful');
//         print(' reschedule: ${response.body}');
//
//         setState(() {
//           rescheduleSuccess = true;
//         });
//       }
//
//       if (rescheduleSuccess == true) {
//         _showSuccessDialog(context);
//       } else {
//         _showFailureDialog(context);
//       }
//     } catch (e) {
//       print('Error message: $e');
//       _showFailureDialog(context);
//     }
//
//
//           // "preferred_appointment_date": date,
//           // "preferred_appointment_time": time,
//           // "department": department,
//           // "procedure": procedure,
//           // "applied_service": service,
//           // "appointmentid": appointmentid,
//
//
//
//
//
//   }
//
//   //handle reschedule
//   // handleReschedule() async {
//   //   try {
//   //     var rescheduleSuccess = false;
//   //     final statusCode = await rescheduleAppointment(
//   //
//   //         appointmentDate.toString(),
//   //         appointmentTime.format(context),
//   //         departmentVariable,
//   //         procedureController.text,
//   //         widget.doctorName,
//   //         widget.firstName,
//   //         widget.service
//   //
//   //     );
//   //
//   //
//   //     if (statusCode == 201) {
//   //       setState(() {
//   //         rescheduleSuccess = true;
//   //       });
//   //     }
//   //
//   //     if (rescheduleSuccess == true) {
//   //       _showSuccessDialog(context);
//   //     } else {
//   //       _showFailureDialog(context);
//   //     }
//   //   } catch (e) {
//   //     print('Error message: $e');
//   //     _showFailureDialog(context);
//   //   }
//   // }
//
//
//   //dialogs
//   void _showSuccessDialog(context) =>
//       showDialog(
//         context: context,
//         builder: (context) => RescheduleDialog(),
//       );
//
//   void _showFailureDialog(context) =>
//       showDialog(
//         context: context,
//         builder: (context) => FailureDialog(),
//       );
//
//
// //controllers
//   final procedureController = TextEditingController();
//   final appliedServiceController = TextEditingController();
//
//   //variables
//   String? departmentVariable;
//   String? procedureVariable;
//   String? appliedServiceVariable;
//   String? doctorNameVariable;
//   //date and time items
//   DateTime appointmentDate = DateTime.now();
//   TimeOfDay appointmentTime = TimeOfDay.now();
//
//
//   Widget _rescheduleForm() =>
//       Padding(
//         padding: const EdgeInsets.all(13.0),
//         child: SingleChildScrollView(
//           physics: ClampingScrollPhysics(),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text('Department'),
//               DropDownField(
//                 value: departmentVariable,
//                 hintText: 'Select Department',
//                 dataSource: ListItems().departmentOptions,
//                 onChanged: (value) {
//                   setState(() {
//                     departmentVariable = value;
//                   });
//                 },
//                 textField: 'label',
//                 valueField: 'value',
//               ),
//
//               SizedBox(height: 5,),
//
//               Text('Procedure'),
//               TextFormField(
//                 controller: procedureController,
//                 decoration: InputDecoration(
//                   labelText: 'Procedure',
//                   hintText: 'Procedure',
//                   suffixIcon: procedureController.text.isEmpty
//                       ? Container(width: 0)
//                       : IconButton(
//                     icon: Icon(Icons.close),
//                     onPressed: () => procedureController.clear(),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                       vertical: 10, horizontal: 12),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8)
//                   ),
//                   alignLabelWithHint: true,
//                 ),
//                 onSaved: (value) => setState(() => procedureVariable = value),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'procedure is required';
//                   } else {
//                     return null;
//                   }
//                 },
//               ),
//
//               SizedBox(height: 5,),
//
//               Text('Preferred Date'),
//               Column(
//                 children: <Widget>[
//                   Container(
//                     height: 50,
//                     width: 300,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4),
//                         border: Border.all(
//                           color: Colors.black45,
//                           width: 2,
//                         )
//                     ),
//                     child: Center(child:
//                     Text(
//                       "${appointmentDate
//                           .year} - ${appointmentDate
//                           .month} - ${appointmentDate.day}",
//                     ),),
//                   ),
//                   SizedBox(height: 5,),
//                   SizedBox(height: 5,),
//                   MaterialButton(
//                     child: Text('Choose Date'),
//                     color: Colors.blue.withOpacity(0.4),
//                     hoverColor: Colors.lightBlueAccent,
//                     elevation: 0,
//                     onPressed: () async {
//                       final DateTime? dateTime = await showDatePicker(
//                         context: context,
//                         initialDate: appointmentDate,
//                         firstDate: DateTime(2000),
//                         lastDate: DateTime(3000),
//                       );
//
//                       // if (dateTime != null) {
//                       //   setState(() {
//                       //     preferredAppointmentDate = dateTime;
//                       //   });
//                       // }
//                     },
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: 5,),
//
//               Text('Preferred Time'),
//               SizedBox(height: 5,),
//               Column(
//                 children: <Widget>[
//                   Container(
//                     height: 50,
//                     width: 300,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4),
//                         border: Border.all(
//                           color: Colors.black45,
//                           width: 2,
//                         )
//                     ),
//                     child: Center(
//                       child: Text(
//                         "${appointmentTime
//                             .hour}: ${appointmentTime.minute.toString()
//                             .padLeft(2, '0')}",
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 5,),
//                   MaterialButton(
//                     child: Text('Choose Time'),
//                     color: Colors.blue.withOpacity(0.4),
//                     hoverColor: Colors.lightBlueAccent,
//                     elevation: 0,
//                     onPressed: () async {
//                       final TimeOfDay? time = await showTimePicker(
//                         context: context,
//                         initialTime: appointmentTime,
//                         initialEntryMode: TimePickerEntryMode.dial,
//                       );
//
//                       if (time != null) {
//                         setState(() {
//                           appointmentTime = time;
//                         });
//                       }
//                     },
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: 5,),
//
//               // Text('Preferred Doctor'),
//               // DropDownField(
//               //   value: doctorNameVariable,
//               //   hintText: 'Select Doctor',
//               //   dataSource: ListItems().doctorOptions,
//               //   onChanged: (value) {
//               //     setState(() {
//               //       doctorNameVariable = value;
//               //     });
//               //   },
//               //   textField: 'label',
//               //   valueField: 'value',
//               // ),
//               //
//               // SizedBox(height: 5,),
//
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         elevation: 0,
//                         primary: Colors.redAccent,
//                       ),
//                       child: Text('Cancel'),
//                       onPressed: () => Navigator.pop(context),
//                     ),
//
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         elevation: 0,
//                         primary: Colors.green,
//                       ),
//                       child: Text('Okay'),
//                       onPressed: () => rescheduleAppointment,
//                         // handleReschedule(),
//                     ),
//                   ]
//               ),
//
//             ],
//           ),
//         ),
//       );
//
//   //bottom modal sheet
//   void _modalSheet(context) =>
//       showModalBottomSheet(
//         context: context,
//         enableDrag: true,
//         builder: (BuildContext context) {
//           return Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//                 height: MediaQuery
//                     .of(context)
//                     .size
//                     .height * 3,
//                 child: _rescheduleForm()
//             ),
//           );
//         },
//       );
//
//
//
//   @override
// Widget build(BuildContext context){
//   return Scaffold(
//     appBar: AppBar(),
//     body: SafeArea(
//       child: Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Column(
//           children: <Widget>[
//             Center(
//               child: Text(
//                 'Appointment Details',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//
//
//
//           ],
//         ),
//       ),
//     ),
//     bottomNavigationBar: NavBar(),
//   );
// }
//
// }
