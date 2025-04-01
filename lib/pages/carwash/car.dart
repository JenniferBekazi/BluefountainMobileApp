import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/bookcar.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/allcars.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/carscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carwash/branches.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carwash/carcard.dart';
import 'package:flutter/material.dart';

import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';
import '../profile.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/fuelType.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/priceRange.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/rentalType.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/transmission.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/year.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Car extends StatefulWidget{
  const Car({Key ? key}): super(key : key);

  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> with SingleTickerProviderStateMixin {
  final searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }






  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('CarWash Near Me'),
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
    //     bottom: TabBar(
    //       controller: _tabController,
    //       physics: AlwaysScrollableScrollPhysics(),
    //       isScrollable: true,
    //       indicatorSize: TabBarIndicatorSize.label,
    //       tabs: [
    //       Tab(
    //       text: 'Services',
    //     ),
    //
    //     Tab(
    //       text: 'Body Type',
    //     ),
    // ],
    //     ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
            icon: FaIcon(FontAwesomeIcons.listCheck, size: 23, color: Colors.white,),
          ),
        ],



        // InkWell(
        //   onTap: () {Navigator.of(context).push(
        //       MaterialPageRoute(builder: (context) => ViewBookings()));}, //,
        //   child: const Text(
        //     'Bookings',
        //     style: TextStyle(
        //       fontSize: 15,
        //       color: Colors.white,
        //
        //     ),
        //   ),
        // ),


      ),


      drawer: DrawerClass(),
      body: ListView(
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
                    hintText: 'search CarWash by location',
                    suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

                ),
              ),
            ),
          ),

          SizedBox(height: 5,),

          CarCard(
            imagePath: 'icons/map.jpeg',
            doctorName: '',
            doctorEmail: '',
            doctorSpeciality: '',
            doctorNumber: '',
            viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Branches())),
            bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
          ),

          SizedBox(height: 5,),
        //
        //   CarsCard(
        //     imagePath: 'icons/car2.jpg',
        //     doctorName: '2018 Audi A1',
        //     doctorEmail: 'Automatic',
        //     doctorSpeciality: 'Petrol',
        //     doctorNumber: 'R1000/day',
        //     viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewCar(callTime: 'R1000/day',doctorLocation: 'Automatic', doctorName: '2018 Audi A1', imagePath: 'icons/car2.jpg',))),
        //     bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
        //   ),
        //
        //   SizedBox(height: 5,),
        //
        //   CarsCard(
        //     imagePath: 'icons/car3.jpg',
        //     doctorName: '2021 Kia Picanto 1.0',
        //     doctorEmail: 'Manual',
        //     doctorSpeciality: 'Petrol',
        //     doctorNumber: 'R1000/day',
        //     viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewCar(callTime: 'R1000/day',doctorLocation: 'Manual', doctorName: '2021 Kia Picanto 1.0', imagePath: 'icons/car3.jpg',))),
        //     bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
        //   ),
        //
         ],
      ),







      bottomNavigationBar: NavBar(),

    );
  }
}