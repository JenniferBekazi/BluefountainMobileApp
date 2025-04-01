// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:provider/provider.dart';
//
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/components/viewappointments/viewcomponent.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/services/appointments/manageAppointments.dart';
// import '../../../models/appointmentsmodel.dart';
// import '../components/cancelcomponent.dart';
//
//
// class Pending extends StatefulWidget{
//   const Pending({Key ? key}): super(key : key);
//
//   State<Pending> createState() => _PendingState();
// }
//
// class _PendingState extends State<Pending>{
//
//   List<AppointmentModel> appointments = [];
//
//   Future<List<AppointmentModel>?> getAppointments() async{
//     final appointment = await  AppointmentsProvider().getAppointments();
//
//     if(appointment != null){
//       for(var item in appointment){
//         if(item.status == "Pending"){
//           appointments.add(item);
//         }
//       }
//       return appointments ?? [];
//     }else{
//       print("Appointments Empty");
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context){
//
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: FutureBuilder<List<AppointmentModel>?>(
//         future: getAppointments(),
//         builder: (BuildContext context,  AsyncSnapshot<List<AppointmentModel>?> snapshot){
//           if(snapshot.connectionState == ConnectionState.waiting){
//             return Center(child: CircularProgressIndicator(),);
//           }else if(snapshot.hasError){
//             return Center(child: Text('Looks like an error occured'),);
//           }else{
//             return ListView.builder(
//               shrinkWrap: true,
//               physics: ClampingScrollPhysics(),
//               itemCount: appointments.length,
//               itemBuilder: (context, index){
//                 AppointmentModel appointment = appointments[index];
//
//                 return Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Slidable(
//                       endActionPane: ActionPane(
//                         motion: ScrollMotion(),
//                         children: [
//                           SlidableAction(
//                             icon: Icons.remove_red_eye_outlined,
//                             backgroundColor: Colors.blueAccent,
//                             label: 'View',
//                             onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(
//                               firstName:appointment.firstName,
//                               lastName: appointment.lastName,
//                               department: appointment.department,
//                               preferredApppointmentDate: appointment.preferredAppointmentDate.toString(),
//                               preferredAppointmentTime:  appointment.preferredAppointmentTime.toString(),
//                               doctorName: appointment.preferredDoctor,
//                                procedure: appointment.procedure,
//                               city: appointment.city,
//                               state: appointment.state,
//                               gender: appointment.gender,
//                               id: appointment.id,
//                               nationalId: appointment.nationalId,
//                               status: appointment.status,
//                               bookings: [],
//                               createdAt: appointment.doctorEmail,
//                               updatedAt: appointment.communication,
//                               // service: appointment.appliedService.toString(),
//                               // appointmentid: appointment.appointmentid,
//                             ))),
//                           ),
//
//                           SlidableAction(
//                             icon: Icons.delete_forever,
//                             backgroundColor: Colors.redAccent,
//                             label: 'Cancel',
//                             onPressed: (context) => showDialog(
//                               context: context,
//                               builder: (context) => CancelComponent(appointmentid: appointment.appointmentid,),
//                             ),
//                           ),
//                         ],
//                       ),
//                       child: ListTile(
//                         title: Text('${appointment.procedure} on ${appointment.preferredAppointmentDate.toString()} at ${appointment.preferredAppointmentTime}', style: TextStyle(fontSize: 14),),
//                       ),
//                     ),
//
//                     SizedBox(height: 8,),
//
//                     Divider(
//                       height: 1,
//                       color: Colors.black26,
//                       thickness: 2,
//                     ),
//
//                     SizedBox(height: 8,),
//
//                   ],
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }