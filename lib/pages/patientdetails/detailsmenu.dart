// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:http/http.dart' as http;
//
// import '../homepage.dart';
// import '../profile.dart';
// import '../settings.dart';
// import '../components/drawercomponent.dart';
// import '../components/bottomnavigationbar.dart';
// import 'mydetailspage.dart';
// import '../../models/patientmodel.dart';
//
// class DetailsMenu extends StatefulWidget{
//   const DetailsMenu({Key ? key}): super(key : key);
//
//   State<DetailsMenu> createState() => _DetailsMenuState();
// }
//
// class _DetailsMenuState extends State<DetailsMenu>{
//   PatientModel? patientDetails;
//
//   Future<PatientModel?> getPatientDetails() async{
//     var url = Uri.parse('http://192.168.8.107:3001/mongo/patient/?email=nyashachaingei@gmail.com');
//
//     try{
//       final response = await http.get(url);
//
//       if(response.statusCode == 200){
//         print('Patient successfully retrieved');
//         patientDetails = jsonDecode(response.body);
//       }
//     }catch(e){
//       print(e.toString());
//     }
//   }
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 70,
//         centerTitle: true,
//         title: Text('My Details'),
//         automaticallyImplyLeading: false,
//         leading: Builder(
//             builder: (context) {
//               return IconButton(
//                   onPressed: (){
//                     Scaffold.of(context).openDrawer();
//                   },
//                   icon: Icon(Icons.menu_sharp, color: Colors.white,)
//               );
//             }
//         ),
//         actions: [
//           IconButton(
//             onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile())),
//             icon: Icon(Icons.person),
//           ),
//         ],
//       ),
//       drawer: DrawerClass(),
//       body: Dialog(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20)
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: SingleChildScrollView(
//             physics: AlwaysScrollableScrollPhysics(),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Container(
//                   child: Center(
//                     child: Text(
//                       'My Details',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//
//                 Divider(
//                   color: Colors.grey[80],
//                   height: 3,
//                   thickness: 2,
//                 ),
//
//                 //navigate to patient details
//                 ListTile(
//                   leading: FaIcon(FontAwesomeIcons.info) ,
//                   title:Text('View My Details'),
//                   onTap: (){
//
//                       Navigator.of(context).push(
//                           MaterialPageRoute(builder: (context) => MyDetailsPage( )));
//
//                   },
//                 ),
//
//                 Divider(
//                   color: Colors.grey[80],
//                   height: 3,
//                   thickness: 2,
//                 ),
//
//                 //navigate to patient employment details
//                 ListTile(
//                   leading: FaIcon(FontAwesomeIcons.rectangleList) ,//Expanded(child: Image.asset('icons/vehicle.png')),
//                   title:Text('My Employment Details'),
//                   onTap: (){
//                     //Navigator.of(context).push(MaterialPageRoute(builder: (context) => VehicleMenu()));
//                   },
//                 ),
//
//                 Divider(
//                   color: Colors.grey[80],
//                   height: 3,
//                   thickness: 2,
//                 ),
//
//                 //navigate to patient referrals details
//                 ListTile(
//                   leading: FaIcon(FontAwesomeIcons.receipt) ,//Expanded(child: Image.asset('icons/vehicle.png')),
//                   title:Text('My Referrals'),
//                   onTap: (){
//                     //Navigator.of(context).push(MaterialPageRoute(builder: (context) => VehicleMenu()));
//                   },
//                 ),
//
//                 Divider(
//                   color: Colors.grey[80],
//                   height: 3,
//                   thickness: 2,
//                 ),
//
//                //navigate to patient admission details
//                 ListTile(
//                   leading: FaIcon(FontAwesomeIcons.hospital) ,//Expanded(child: Image.asset('icons/vehicle.png')),
//                   title:Text('Admissions'),
//                   onTap: (){
//                     //Navigator.of(context).push(MaterialPageRoute(builder: (context) => VehicleMenu()));
//                   },
//                 ),
//
//                 Divider(
//                   color: Colors.grey[80],
//                   height: 3,
//                   thickness: 2,
//                 ),
//
//               ],
//             ),
//           ),
//         ),
//       ),
//
//       bottomNavigationBar:  NavBar(),
//     );
//   }
// }