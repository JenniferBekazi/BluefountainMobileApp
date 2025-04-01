import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/bookcar.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/allcars.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/carscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carwash/carcard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carwash/carcard2.dart';
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


class Branches extends StatefulWidget{
  const Branches({Key ? key}): super(key : key);

  State<Branches> createState() => _BranchesState();
}

class _BranchesState extends State<Branches>  {
  final searchController = TextEditingController();






  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Our Branches'),
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

          CarCard2(
            imagePath: 'icons/carwash1.jpg',
            doctorName: 'Centurion',
            doctorEmail: 'Centurion Central',
            doctorSpeciality: 'Address: Centurion, 0157',
            doctorNumber: 'Contact: (011) 813 3568',
            viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Branches())),
            bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
          ),

          SizedBox(height: 5,),

            CarCard2(
              imagePath: 'icons/carwash2.jpg',
              doctorName: 'Bedfordview',
              doctorEmail: 'Bedford Center',
              doctorSpeciality: 'Address: Van Der Linde Rd, Bedfordview',
              doctorNumber: 'Contact: (012) 813 4768',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Branches())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
            ),

            SizedBox(height: 5,),

            CarCard2(
              imagePath: 'icons/carwash3.jpg',
              doctorName: 'Midrand',
              doctorEmail: 'Mall of Africa',
              doctorSpeciality: 'Address: Magwa Cres, Midrand, 2066',
              doctorNumber: 'Contact: (010) 763 3568',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Branches())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
            ),
          //
        ],
      ),







      bottomNavigationBar: NavBar(),
    );
  }
}