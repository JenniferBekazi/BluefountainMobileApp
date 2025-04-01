import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/bookbarber.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/moreInfor.dart';

import 'package:flutter/material.dart';






class NailtreatmentTab extends StatefulWidget{
  const NailtreatmentTab({Key ? key}): super(key : key);

  State<NailtreatmentTab> createState() => _NailtreatmentTabState();
}

class _NailtreatmentTabState extends State<NailtreatmentTab>  {
  final searchController = TextEditingController();






  @override
  Widget build(BuildContext context){
     return ListView(
     physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      children: [
        //search bar
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  alignLabelWithHint: true,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  hintText: 'search by name or location',
                  suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

              ),
            ),
          ),
        ),

        BarberCard(
          imagePath: 'icons/barber1.png',
          doctorName: 'R200',
          doctorEmail: 'Boitumelo',
          doctorSpeciality: 'Centurion',
          doctorNumber: 'Haircut Machine',
          doctorLocation: 'Stacking',
          doctorFirm: 'Razor shave',
          doctorGender: 'HairStyling',
          doctorAge: '150 clients',
          doctorJob: '',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Bophelo', imagePath: 'icons/barber1.png',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
        ),

        SizedBox(height: 5,),

        BarberCard(
          imagePath: 'icons/barber2.png',
          doctorName: 'R350',
          doctorEmail: 'Phoebe',
          doctorSpeciality: 'Soweto',
          doctorNumber: 'Haircut Machine',
          doctorLocation: 'Stacking',
          doctorFirm: 'Razor shave',
          doctorGender: 'Beard haircut',
          doctorAge: '225 clients',
          doctorJob: '',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Shabani', imagePath: 'icons/barber2.png',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
        ),

        SizedBox(height: 5,),

        BarberCard(
          imagePath: 'icons/barber3.png',
          doctorName: 'R250',
          doctorEmail: 'Rasta',
          doctorSpeciality: 'Pretoria',
          doctorNumber: 'Haircut Machine',
          doctorLocation: 'Stacking',
          doctorFirm: 'Razor shave',
          doctorGender: 'Beard haircut',
          doctorAge: '250 clients',
          doctorJob: '',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Itumeleng', imagePath: 'icons/barber3.png',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
        ),

        ],
       );










  }
}


// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/appointmentsstepper.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/viewappointments.dart';
// import 'package:flutter/material.dart';
//
//
// import '../components/doctorcard.dart';
// import '../components/bookdoctor.dart';
// import '../components/viewdoctor.dart';
//
// class CardiologyTab extends StatelessWidget{
//   final searchController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context){
//     return ListView(
//       physics: ClampingScrollPhysics(),
//       shrinkWrap: true,
//       children: [
//         //search bar
//         Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: searchController,
//               decoration: InputDecoration(
//                   contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
//                   alignLabelWithHint: true,
//
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                     borderSide: BorderSide(width: 0.8),
//                   ),
//                   hintText: 'search for your doctor by name',
//                   suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)
//
//               ),
//             ),
//           ),
//         ),
//
//         SizedBox(height: 10,),
//
//         DoctorCard(
//           imagePath: 'icons/doctor1.jpg',
//           doctorName: 'Sammie Pops',
//           doctorLocation: 'Midrand, Guateng',
//           doctorNumber: '+27 781453786',
//           viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments())),
//           bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
//         ),
//
//         SizedBox(height: 5,),
//
//         DoctorCard(
//           imagePath: 'icons/doctor3.jpg',
//           doctorName: 'Jennie Mabuza',
//           doctorLocation: 'Tzaneen, Limpopo',
//           doctorNumber: '+27 641248624',
//           viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments())),
//           bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
//         ),
//
//         SizedBox(height: 5,),
//
//         DoctorCard(
//           imagePath: 'icons/doctor2.jpg',
//           doctorName: 'Sarel Baloyi',
//           doctorLocation: 'Waterfall, Pretoria',
//           doctorNumber: '+27 699064908',
//           viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments())),
//           bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
//         ),
//
//       ],
//     );
//   }
// }