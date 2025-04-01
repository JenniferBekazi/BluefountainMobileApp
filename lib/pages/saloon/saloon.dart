// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/bookbarber.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/moreInfor.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/bookcar.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/allcars.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/carscard.dart';
// import 'package:flutter/material.dart';
//
// import '../components/bottomnavigationbar.dart';
// import '../components/drawercomponent.dart';
// import '../profile.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/fuelType.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/priceRange.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/rentalType.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/transmission.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/year.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//
// class Barbers extends StatefulWidget{
//   const Barbers({Key ? key}): super(key : key);
//
//   State<Barbers> createState() => _BarbersState();
// }
//
// class _BarbersState extends State<Barbers>  {
//   final searchController = TextEditingController();
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 70,
//         centerTitle: true,
//         title: Text('Find A Barber'),
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
//             onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
//             icon: FaIcon(FontAwesomeIcons.listCheck, size: 23, color: Colors.white,),
//           ),
//         ],
//
//
//
//             // InkWell(
//             //   onTap: () {Navigator.of(context).push(
//             //       MaterialPageRoute(builder: (context) => ViewBookings()));}, //,
//             //   child: const Text(
//             //     'Bookings',
//             //     style: TextStyle(
//             //       fontSize: 15,
//             //       color: Colors.white,
//             //
//             //     ),
//             //   ),
//             // ),
//
//
//       ),
//
//       drawer: DrawerClass(),
//         body: ListView(
//           physics: ClampingScrollPhysics(),
//           shrinkWrap: true,
//           children: [
//             //search bar
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: searchController,
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
//                       alignLabelWithHint: true,
//
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                         borderSide: BorderSide(width: 0.8),
//                       ),
//                       hintText: 'search barbers name',
//                       suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)
//
//                   ),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 5,),
//
//             BarberCard(
//               imagePath: 'icons/barber1.png',
//               doctorName: 'R200',
//               doctorEmail: 'Bophelo',
//               doctorSpeciality: 'Centurion',
//               doctorNumber: 'Haircut Machine',
//               doctorLocation: 'Stacking',
//               doctorFirm: 'Razor shave',
//               doctorGender: 'HairStyling',
//               doctorAge: '150 clients',
//               doctorJob: '',
//               viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Bophelo', imagePath: 'icons/barber1.png',))),
//               bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
//             ),
//
//             SizedBox(height: 5,),
//
//             BarberCard(
//               imagePath: 'icons/barber2.png',
//               doctorName: 'R350',
//               doctorEmail: 'Shabani',
//               doctorSpeciality: 'Soweto',
//               doctorNumber: 'Haircut Machine',
//               doctorLocation: 'Stacking',
//               doctorFirm: 'Razor shave',
//               doctorGender: 'Beard haircut',
//               doctorAge: '225 clients',
//               doctorJob: '',
//               viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Shabani', imagePath: 'icons/barber2.png',))),
//               bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
//             ),
//
//             SizedBox(height: 5,),
//
//             BarberCard(
//               imagePath: 'icons/barber3.png',
//               doctorName: 'R250',
//               doctorEmail: 'Itumeleng',
//               doctorSpeciality: 'Pretoria',
//               doctorNumber: 'Haircut Machine',
//               doctorLocation: 'Stacking',
//               doctorFirm: 'Razor shave',
//               doctorGender: 'Beard haircut',
//               doctorAge: '250 clients',
//               doctorJob: '',
//               viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Itumeleng', imagePath: 'icons/barber3.png',))),
//               bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
//             ),
//
//           ],
//         ),
//
//
//
//
//
//
//
//       bottomNavigationBar: NavBar(),
//     );
//   }
// }

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/beardhaircut.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/haircutmachine.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/hairstyling.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/razorshave.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/stacking.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/saloon/tab/colouring.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/saloon/tab/haircutmachine.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/saloon/tab/nailtreatment.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/saloon/tab/tanning.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/saloon/tab/waxing.dart';
import 'package:flutter/material.dart';

import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';


class Saloon extends StatefulWidget{
  const Saloon({Key ? key}): super(key : key);

  State<Saloon> createState() => _SaloonState();
}

class _SaloonState extends State<Saloon>  with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Book A Saloon'),
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
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
            icon: FaIcon(FontAwesomeIcons.listCheck, size: 23, color: Colors.white,),
          ),
        ],

        bottom: TabBar(
          controller: _tabController,
          physics: AlwaysScrollableScrollPhysics(),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              text: 'Colouring',
            ),

            Tab(
              text: 'Haircut Machine',
            ),

            Tab(
              text: 'Nail Treatment',
            ),

            Tab(
              text: 'Waxing',
            ),

            Tab(
              text: 'Tanning',
            ),


          ],
        ),
      ),

      drawer: DrawerClass(),

      body: TabBarView(
        controller: _tabController,
        children: [

          ColouringTab(),

          HaircutTab(),


          NailtreatmentTab(),

          WaxingTab(),


          TanningTab(),




        ],
      ),

      bottomNavigationBar: NavBar(),
    );
  }
}