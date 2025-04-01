import 'dart:convert';

//
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/doctors/doctorservices/bloc3/posts_bloc3.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';
//
// import '../../../components/bottomnavigationbar.dart';
// import '../../../components/listitemsclass.dart';
// import 'package:random_string/random_string.dart';
//
// import '../../../doctors/doctorservices/bookings_model.dart';
//
//
// class ViewComponent extends StatefulWidget {
//
//   final List<BookingsModel> bookings;
//    ViewComponent({required this.bookings, String? firstName, String? id, String? procedure, String? lastName, String? department, String? doctorName, String? gender, String? state, String? city, String? createdAt, String? nationalId, String? preferredApppointmentDate, String? preferredAppointmentTime, String? status, String? updatedAt,});
//
//
//   // final String? firstName;
//   // final String? lastName;
//   // final String? department;
//   // final String? procedure;
//   // final String? id;
//   // final String? doctorName;
//   // final String? gender;
//   // final String? state;
//   // final String? city;
//   // final String? createdAt;
//   // final String? nationalId;
//   // final String? preferredApppointmentDate;
//   // final String? preferredAppointmentTime;
//   // final String? status;
//   // final String? updatedAt;
//   //
//   //
//   //
//   //
//   // ViewComponent({
//   //   Key ? key,
//   //   required this.firstName,
//   //   required this.lastName,
//   //   required this.department,
//   //   required this.procedure,
//   //   required this.id,
//   //   required this.doctorName,
//   //   required this.gender,
//   //   required this.state,
//   //   required this.city,
//   //   required this.createdAt,
//   //   required this.nationalId,
//   //   required this.preferredApppointmentDate,
//   //   required this.preferredAppointmentTime,
//   //   required this.status,
//   //   required this.updatedAt, required this.bookings,
//   // }) :
//   //       super(key: key);
//
//   State<ViewComponent> createState() => _ViewComponentState();


// }

// class _ViewComponentState extends State<ViewComponent>with SingleTickerProviderStateMixin{
//   // Widget _rescheduleForm(BuildContext context) => Padding(
//   //
//   //   padding: const EdgeInsets.all(13.0),
//   //   child: SingleChildScrollView(
//   //     physics: ClampingScrollPhysics(),
//   //     child: Column(
//   //       mainAxisSize: MainAxisSize.min,
//   //       children: <Widget>[
//   //         Text('Department'),
//   //         DropDownField(
//   //           value: departmentVariable,
//   //           hintText: 'Select Department',
//   //           dataSource: ListItems().departmentOptions,
//   //           onChanged: (value){
//   //             setState(() {
//   //               departmentVariable = value;
//   //             });
//   //           },
//   //           textField: 'label',
//   //           valueField: 'value',
//   //         ),
//   //
//   //         SizedBox(height: 5,),
//   //
//   //         Text('Procedure'),
//   //         TextFormField(
//   //           controller: procedureController,
//   //           decoration: InputDecoration(
//   //             labelText: 'Procedure',
//   //             hintText: 'Procedure',
//   //             suffixIcon: procedureController.text.isEmpty
//   //                 ? Container(width:0)
//   //                 : IconButton(
//   //               icon:Icon(Icons.close),
//   //               onPressed: () => procedureController.clear(),
//   //             ),
//   //             contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//   //             border: OutlineInputBorder(
//   //                 borderRadius: BorderRadius.circular(8)
//   //             ),
//   //             alignLabelWithHint: true,
//   //           ),
//   //           onSaved: (value) => setState(() => procedureVariable = value),
//   //           validator: (value){
//   //             if(value!.isEmpty){
//   //               return 'procedure is required';
//   //             }else{
//   //               return null;
//   //             }
//   //           },
//   //         ),
//   //
//   //         SizedBox(height: 5,),
//   //
//   //         Text('Preferred Date'),
//   //         Column(
//   //           children: <Widget>[
//   //             Text(
//   //               "${appointmentDate.year} - ${appointmentDate.month} - ${appointmentDate.day}",
//   //             ),
//   //             MaterialButton(
//   //               child: Text('Choose Date'),
//   //               color: Colors.blueGrey,
//   //               hoverColor: Colors.lightBlueAccent,
//   //               elevation: 4,
//   //               onPressed: () async{
//   //                 final DateTime? dateTime = await showDatePicker(
//   //                   context: context,
//   //                   initialDate: appointmentDate,
//   //                   firstDate: DateTime(2000),
//   //                   lastDate: DateTime(3000),
//   //                 );
//   //
//   //                 if(dateTime != null){
//   //                   setState(() {
//   //                     appointmentDate = dateTime;
//   //                   });
//   //                 }
//   //               },
//   //             ),
//   //           ],
//   //         ),
//   //
//   //         SizedBox(height: 5,),
//   //
//   //         Text('Preferred Time'),
//   //         Column(
//   //           children: <Widget>[
//   //             Text(
//   //               "${appointmentTime.hour}: ${appointmentTime.minute}",
//   //             ),
//   //             MaterialButton(
//   //               child: Text('Choose Time'),
//   //               color: Colors.blueGrey,
//   //               hoverColor: Colors.lightBlueAccent,
//   //               elevation: 4,
//   //               onPressed: () async{
//   //                 final TimeOfDay? time = await showTimePicker(
//   //                   context: context,
//   //                   initialTime: appointmentTime,
//   //                   initialEntryMode: TimePickerEntryMode.dial,
//   //                 );
//   //
//   //                 if(time != null){
//   //                   setState(() {
//   //                     appointmentTime = time;
//   //                   });
//   //                 }
//   //               },
//   //             ),
//   //           ],
//   //         ),
//   //
//   //         SizedBox(height: 5,),
//   //
//   //         Text('Preferred Doctor'),
//   //         DropDownField(
//   //           value: doctorVariable,
//   //           hintText: 'Select Doctor',
//   //           dataSource: ListItems().doctorOptions,
//   //           onChanged: (value){
//   //             setState(() {
//   //               doctorVariable = value;
//   //             });
//   //           },
//   //           textField: 'label',
//   //           valueField: 'value',
//   //         ),
//   //
//   //         SizedBox(height: 5,),
//   //
//   //         Row(
//   //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //             children: <Widget>[
//   //               ElevatedButton(
//   //                 style: ElevatedButton.styleFrom(
//   //                   elevation: 0,
//   //                   primary: Colors.redAccent,
//   //                 ),
//   //                 child: Text('Cancel'),
//   //                 onPressed: () => Navigator.pop(context as BuildContext),
//   //               ),
//   //
//   //               ElevatedButton(
//   //                   style: ElevatedButton.styleFrom(
//   //                     elevation: 0,
//   //                     primary: Colors.green,
//   //                   ),
//   //                   child: Text('Okay'),
//   //                   onPressed: () {
//   //                     rescheduleCall(preferredDoctor.toString(),department.toString(),
//   //                         appointmentDate.toString(),procedure.toString(), appointmentTime.toString());
//   //                     Navigator.pop(context as BuildContext);
//   //                   }
//   //               ),
//   //             ]
//   //         ),
//   //
//   //       ],
//   //     ),
//   //   ),
//   // );
//   late TabController _tabController;
//   final PostsBloc postsBloc = PostsBloc();
//   @override
//   void initState() {
//     postsBloc.add(PostsInitialFetchEvent());
//
//     super.initState();
//     _tabController = TabController(length: 1, vsync: this, );
//
//   }


//   Future<void>? rescheduleCall(String preferredDoctor, String department,
//       String appointmentDate,String procedure, String appointmentTime) async{
//     final url = Uri.parse("http://20.164.214.226:3060/mongo/bookings/rescheduleBooking");
//
//
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
//           }),);
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
// }



  //reschedule codes

  //controllers

//   Future<void>? getappointments() async{
//     final url = Uri.parse("http://20.164.214.226:3060/mongo/bookings/getBookingsByEmail?email=mabuzajennifer@yahoo.com");
//
//     try{
//       final response = await http.get(url);
//
//       if(response.statusCode == 201){
//         final data = jsonDecode(response.body);
//         print(data);
//       }
//     }catch (e){
//       print(e.toString());
//     }
//
//   }
//   // final procedureController = TextEditingController();
//   //
//   // //variables
//   // String? departmentVariable;
//   // String? procedureVariable;
//   // String? doctorVariable;
//
//
//
// // //payment components
// // //controllers
// // final creditcardnameController = TextEditingController();
// // final creditcardnumberController = TextEditingController();
// // final creditcardcvcController = TextEditingController();
// // final creditcardaddressController = TextEditingController();
// // final creditcardamountController = TextEditingController();
// // final medicalaidcompanyController = TextEditingController();
// // final medicalpolicyholderController = TextEditingController();
// // final medicalpolicynumberController = TextEditingController();
// // final medicalmembernumberController = TextEditingController();
// // final medicalinsuranceplanController = TextEditingController();
// // final medicalaidamountController = TextEditingController();
// //
// // //variables
// // double? cashcomponentAmount;
// // String? creditcardname;
// // String? creditcardnumber;
// // String? creditcardcvc;
// // DateTime creditcardexpirydate = DateTime.now();
// // String? creditcardaddress;
// // String? creditcardamount;
// // String? medicalaidinsurancecompany;
// // String? medicalaidpolicyholder;
// // String? medicalaidpolicynumber;
// // String? medicalaidinsuranceplan;
// // DateTime medicalaidexpirydate = DateTime.now();
// // String? medicalaidinsurancemembernumber;
// // String? medicalaidamount;
// // double cashcomponentamount = 0;
// // String? language = 'English';
// // String id = randomAlphaNumeric(4);
//
//
//
//
// //controllers
// // final _dateFormat = DateFormat('yyyy/MM/dd');
// // final first_NameController = TextEditingController();
// // final last_NameController = TextEditingController();
// // final national_idController = TextEditingController();
// // final addressController = TextEditingController();
// // final zipCodeController = TextEditingController();
// // final symptomsController = TextEditingController();
// // final disabilityController = TextEditingController();
// // final patient_IdController = TextEditingController();
// // final phone_numberController = TextEditingController();
// // final doctorIdController = TextEditingController();
// //
// // //radio buttons value
// // int genderRadio = 1;
// // int optionRadio0 = 1;
// // int optionRadio1 = 1;
// // int optionRadio2 = 1;
// // int optionRadio3 = 1;
// // int optionRadio4 = 1;
// // int optionRadio5 = 1;
// //
// // //date items
// // DateTime appointmentDate = DateTime.now();
// // TimeOfDay appointmentTime = TimeOfDay.now();
// //
// // //variables
// // String? first_Name;
// // String? last_Name;
// // String? national_id;
// // String? gender;
// // String? streetAddress;
// // String? country;
// // String? city;
// // String? state;
// // String? zipCode;
// // String? appliedBefore;
// // String? preferredDoctor;
// // String? department;
// // String? translator;
// // String? accomodation;
// // String? communication;
// // String? sensory;
// // String? cognitive;
// // String? procedure;
//
//
// @override
// Widget build(BuildContext context,){
//
// var postsBloc;
// return Padding(
// padding: const EdgeInsets.all(10.0),
// child: DefaultTabController(
// length: 3,
// child: Scaffold(
// appBar: AppBar(
// centerTitle: true,
// title: Text('Booking Details'),
// automaticallyImplyLeading: false,
//
// actions: [
//
// ],
// bottom: TabBar(
//
// tabs: [
// //upcoming tab
// Tab(
// text: 'More Details',
//
// ),
//
//
// ],
// ),
// ),
// body: BlocConsumer<PostsBloc, PostsState>(
// bloc: postsBloc,
// listenWhen: (previous, current) => current is PostActionState,
// buildWhen: ((previous, current) => current is! PostActionState),
// listener: (context, state) {
//
// },
// builder: (context, state) {
// switch (state.runtimeType) {
// case PostfetchingLoadingState:
// return const Center(
// child: CircularProgressIndicator(),
// );
// case PostFetchingSuccessfulState:
// final successState = state as PostFetchingSuccessfulState;
//
// final List<BookingsModel> bookingsList = successState.posts;
//
// return TabBarView(
// controller: _tabController,
// children: [
//
//
//
// _buildUp(bookings: bookingsList,),
//
//
//
// ],
//
//
// );
// default:
// return const SizedBox();
//
// }
// },
// ),
// bottomNavigationBar: NavBar(),
//
// ),
// ),
// );
// }
//
//
//
//   // void _modalSheet(BuildContext context) => showModalBottomSheet(
//   //     context: context,
//   //     builder: (BuildContext context){
//   //       return Padding(
//   //         padding: const EdgeInsets.all(10.0),
//   //         child: Container(
//   //           height: MediaQuery.of(context).size.height * 0.7,
//   //             child: _rescheduleForm(context)
//   //         ),
//   //       );
//   //     },
//   // );
//
//   @override
// Widget _buildUp({required List<BookingsModel> bookings,}) =>Padding(
// padding: const EdgeInsets.all(15.0),
// child: ListView(
//
// children: [
//
// Column( children:bookings.map(
// (book) => Slidable(
//
// endActionPane: ActionPane(
// motion: ScrollMotion(),
// children: [
//
// Divider(
// color: Colors.grey[80],
// height: 3,
// thickness: 2,
// ),
//
//
// Divider(
// color: Colors.grey[80],
// height: 3,
// thickness: 2,
// ),
// ],
// ),
//
//
// child: ListTile(
//
// leading: Icon(Icons.person),
//
// title:
// Text('Drs name : '
// '${book.doctorName}',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 18,
// color: Colors.black54,
// ),
// ),
//
//
// subtitle: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
//
// Text(
// "PatientID :" "${book.bookingsModelId}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 15,
// ),),
// Text("First Name :" "${book.firstName}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("Last Name :" "${book.lastName}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("Gender:" "${book.gender}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("National ID :" "${book.nationalId}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("Procedure :" "${book.procedure}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
// Text("State :" "${book.state}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
//
//
// Text("City :" "${book.city}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("Department :" "${book.department}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("PreferredAppointment Time :" "${book.preferredAppointmentTime}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("PrefferedAppointment Date :" "${book.preferredAppointmentDate}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("Created at :" "${book.createdAt}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
// Text("Updated at :" "${book.updatedAt}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("Status :" "${book.status}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// Text("bookingsModelId :" "${book.id}",
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 12,
// ),),
//
// SizedBox(height: 4,),
// Divider(
// color: Colors.grey[80],
// height: 3,
// thickness: 2,
// ),
//
// ],),
//
//
//
//
//
// ),
// ),
// ).toList(),),
//
// SizedBox(height: 2,),
//
//
//
//
//
//
//
// ],
// ),
//
//
// );
//
// }




import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/doctors/doctorservices/bloc3/posts_bloc3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';



import '../../../components/bottomnavigationbar.dart';
import '../../../components/listitemsclass.dart';
import '../../../doctors/doctorservices/bookings_model.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/components/failuredialog.dart';

import '../reschedule.dart';



class ViewComponent extends StatefulWidget{

  final String? firstName;
  final String? lastName;
  final String? doctorName;
  final String? department;
  final String? procedure;
  final String? date;
  final String? time;
  final String? appointmentid;
  final String? service;
  
  final BookingsModel bookingsModel;
  ViewComponent({ required this.bookingsModel,
  Key ? key,
    required this.firstName,
    required this.lastName,
    required this.doctorName,
    required this.department,
    required this.procedure,
    required this.date,
    required this.time,
    required this.appointmentid,
    required this.service,

                      }):
  super(key: key);

  State<ViewComponent> createState() => _ViewComponentState();

}



class _ViewComponentState extends State<ViewComponent> with SingleTickerProviderStateMixin{



  late TabController _tabController;
   final PostsBloc postsBloc = PostsBloc();

  @override
  void initState() {
     postsBloc.add(PostsInitialFetchEvent());
    super.initState();
    _tabController = TabController(length: 1, vsync: this, );

  }

  //api calls
  Future<void>? getappointments() async{
    final url = Uri.parse("http://20.164.214.226:3060/mongo/bookings/getBookingsByEmail?email=mabuzajennifer@yahoo.com");

    try{
      final response = await http.get(url);

      if(response.statusCode == 201){
        final data = jsonDecode(response.body);
        print(data);
      }
    }catch (e){
      print(e.toString());
    }

  }

  Future<int?> rescheduleappointments(date, time, department, procedure, preferredDoctor,
      appointmentid) async{

    print(widget.appointmentid);
    try {
      var url = Uri.parse(
          'http://20.164.214.226:3060/mongo/bookings/rescheduleBooking');

      final prevAppointmentSchedule = {
        "preferred_appointment_date": widget.date,
        "preferred_appointment_time": widget.time,
        "department": widget.department,
        "procedure": widget.procedure,
        "applied_service": widget.service,
        "serviceProvider": widget.doctorName,
      };

      final appointmentSchedule = {
        "preferred_appointment_date":
        DateFormat('yyyy-MM-dd').format(appointmentDate),
        "preferred_appointment_time": appointmentTime.format(context),
        "department": departmentVariable,
        "procedure": procedureController.text,
        "applied_service": appliedServiceController.text,

      };
      final requestBody = {
        "appointmentid": widget.appointmentid,
        "appointmentSchedule": appointmentSchedule,
        "prevAppointmentSchedule": prevAppointmentSchedule,
      };
      print('Request body: $requestBody');


      final response = await http.put(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );

      var rescheduleSuccess = false;
      if (response.statusCode == 200) {
        print('Reschedule Successful');
        print(' reschedule: ${response.body}');

        setState(() {
          rescheduleSuccess = true;
        });
      }

      if (rescheduleSuccess == true) {
        _showSuccessDialog(context);
      } else {
        _showSuccessDialog(context);
      }
    } catch (e) {
      print('Error message: $e');
      _showFailureDialog(context);
    }


  }

  //build tabs
  Widget _buildUpcoming({required List<BookingsModel> bookings,}) => Padding(
    padding: const EdgeInsets.all(25.0),
    child: ListView(

      children: [
         ListTile(

          leading: Icon(Icons.person),

          title:
          Text('Drs name : '
              '${widget.bookingsModel.doctorName}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black54,
            ),
          ),



          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "PatientID : " "${widget.bookingsModel..bookingsModelId}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),
              Text("First Name : " "${widget.bookingsModel.firstName}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("Last Name :" "${widget.bookingsModel.lastName}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("Gender: " "${widget.bookingsModel.gender}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("National ID : " "${widget.bookingsModel.nationalId}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("Procedure : " "${widget.bookingsModel.procedure}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),
              Text("State : " "${widget.bookingsModel.state}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),



              Text("City : " "${widget.bookingsModel.city}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("Department : " "${widget.bookingsModel.department}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("Appointment Time : " "${widget.bookingsModel.preferredAppointmentTime}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 4,),

              Text("Appointment Date : " "${widget.bookingsModel.preferredAppointmentDate}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("Created at : " "${widget.bookingsModel.createdAt}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),
              Text("Updated at : " "${widget.bookingsModel.updatedAt}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("Status : " "${widget.bookingsModel.status}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),
              SizedBox(height: 2,),

              Text("BookingsId : " "${widget.bookingsModel.id}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),),

              SizedBox(height: 4,),


            ],),






        ),

  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
  ElevatedButton(
  style: ElevatedButton.styleFrom(
  elevation: 2,
  primary: Colors.blue,
  ),
  child: Text('Reschedule'),
    onPressed: () => _modalSheet(context),
  ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: Colors.redAccent,

      ),
      child: Text('Cancel'),
      onPressed: () => Navigator.pop(context as BuildContext),
    ),]),

        SizedBox(height: 2,),











      ],
    ),
  );
  //controllers
  final procedureController = TextEditingController();

  //variables
  String? departmentVariable;
  String? procedureVariable;
  String? doctorNameVariable;

  //date and time items
  DateTime preferredAppointmentDate = DateTime.now();
  TimeOfDay preferredAppointmentTime = TimeOfDay.now();


  final appliedServiceController = TextEditingController();

  //variables


  String? appliedServiceVariable;

  //date and time items
  DateTime appointmentDate = DateTime.now();
  TimeOfDay appointmentTime = TimeOfDay.now();

  void _modalSheet(context) =>
      showModalBottomSheet(
        context: context,
        enableDrag: true,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 3,
                 child: _rescheduleForm(bookings: [])
            ),
          );
        },
      );

  @override

  Widget _rescheduleForm({required List<BookingsModel> bookings,}) =>
      Padding(
        padding: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Department'),
              DropDownField(
                value: departmentVariable,
                hintText: 'Select Department',
                dataSource: ListItems().departmentOptions,
                onChanged: (value) {
                  setState(() {
                    departmentVariable = value;
                  });
                },
                textField: 'label',
                valueField: 'value',
              ),

              SizedBox(height: 5,),

              Text('Procedure'),
              DropDownField(
                value: procedureVariable,
                hintText: 'Select Procedure',
                dataSource: ListItems().procedureItems,
                onChanged: (value) {
                  setState(() {
                    procedureVariable = value;
                  });
                },
                textField: 'label',
                valueField: 'value',
              ),

              SizedBox(height: 5,),

              Text('Preferred Date'),
              Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.black45,
                          width: 2,
                        )
                    ),
                    child: Center(child:
                    Text(
                      "${preferredAppointmentDate}",
                    ),),
                  ),
                  SizedBox(height: 5,),
                  SizedBox(height: 5,),
                  MaterialButton(
                    child: Text('Choose Date'),
                    color: Colors.blue.withOpacity(0.4),
                    hoverColor: Colors.lightBlueAccent,
                    elevation: 0,
                    onPressed: () async {
                      final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: preferredAppointmentDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000),
                      );

                      if (dateTime != null) {
                        setState(() {
                          preferredAppointmentDate = dateTime;
                        });
                      }
                    },
                  ),
                ],
              ),

              SizedBox(height: 5,),

              Text('Preferred Time'),
              SizedBox(height: 5,),
              Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.black45,
                          width: 2,
                        )
                    ),
                    child: Center(
                      child: Text(
                        "${preferredAppointmentTime
                            .hour}: ${preferredAppointmentTime.minute.toString()
                            .padLeft(2, '0')}",
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  MaterialButton(
                    child: Text('Choose Time'),
                    color: Colors.blue.withOpacity(0.4),
                    hoverColor: Colors.lightBlueAccent,
                    elevation: 0,
                    onPressed: () async {
                      final TimeOfDay? time = await showTimePicker(
                        context: context,
                        initialTime: preferredAppointmentTime,
                        initialEntryMode: TimePickerEntryMode.dial,
                      );

                      if (time != null) {
                        setState(() {
                          preferredAppointmentTime = time;
                        });
                      }
                    },
                  ),
                ],
              ),

              SizedBox(height: 5,),

              Text('Preferred Doctor'),
              DropDownField(
                value: doctorNameVariable,
                hintText: 'Select Doctor',
                dataSource: ListItems().doctorOptions,
                onChanged: (value) {
                  setState(() {
                    doctorNameVariable = value;
                  });
                },
                textField: 'label',
                valueField: 'value',
              ),

              SizedBox(height: 5,),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.redAccent,
                      ),
                      child: Text('Cancel'),
                      onPressed: () => Navigator.pop(context),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.green,
                      ),
                      child: Text('Okay'),
                      onPressed: () => handleReschedule(),
                    ),
                  ]
              ),



            ],
          ),
        ),
      );

  handleReschedule() async {
    try {
      var rescheduleSuccess = false;
      final statusCode = await rescheduleappointments(
          preferredAppointmentDate.toString(),
          preferredAppointmentTime.format(context),
          departmentVariable,
          procedureController.text,
          widget.doctorName,
          widget.firstName

      );


      if (statusCode == 201) {
        setState(() {
          rescheduleSuccess = true;
        });
      }

      if (rescheduleSuccess == true) {
        _showSuccessDialog(context);
      } else {
        _showFailureDialog(context);
      }
    } catch (e) {
      print('Error message: $e');
      _showFailureDialog(context);
    }
  }

  void _showSuccessDialog(context) =>
      showDialog(
        context: context,
        builder: (context) => RescheduleDialog(),
      );

  void _showFailureDialog(context) =>
      showDialog(
        context: context,
        builder: (context) => FailureDialog(),
      );



  @override
  Widget build(BuildContext context,){
    final List<BookingsModel> bookings;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Booking Details '),
            automaticallyImplyLeading: false,
            leading: Builder(
                builder: (context) {
                  return IconButton(
                      onPressed: (){
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu_sharp, color: Colors.white,)
                  );
                }
            ),
            actions: [

            ],
            bottom: TabBar(

              tabs: [
                //upcoming tab
                Tab(
                  text: 'More Details',

                ),




              ],
            ),
          ),
          body: BlocConsumer<PostsBloc, PostsState>(
            bloc: postsBloc,
            listenWhen: (previous, current) => current is PostActionState,
            buildWhen: ((previous, current) => current is! PostActionState),
            listener: (context, state) {

            },
            builder: (context, state) {
              switch (state.runtimeType) {
                case PostfetchingLoadingState:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case PostFetchingSuccessfulState:
                  final successState = state as PostFetchingSuccessfulState;

                  final List<BookingsModel> bookingsList = successState.posts;

                  return TabBarView(
                    controller: _tabController,
                    children: [



                      _buildUpcoming(bookings: bookingsList,),



                    ],


                  );
                default:
                  return const SizedBox();

              }
            },
          ),
          bottomNavigationBar: NavBar(),

        ),
      ),
    );

  }
}


