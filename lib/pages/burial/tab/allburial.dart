
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/bookbarber.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/moreInfor.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/burialcard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/moreInfor.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/bookcar.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/carscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
import 'package:flutter/material.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';




class AllBurialTab extends StatelessWidget{
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



        SizedBox(height: 5,),


        BurialCard(
          imagePath: 'icons/burial1.jpg',
          doctorEmail: 'King Burial Parlour',
          doctorSpeciality: 'Centurion',
          doctorNumber: 'Haircut Machine',
          doctorLocation: 'Stacking',
          doctorFirm: 'Razor shave',
          doctorName: '',
          doctorGender: 'HairStyling',
          doctorJob: '',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBurial(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Gauteng', imagePath: 'icons/burial1.jpg',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
        ),

        SizedBox(height: 5,),

        BurialCard(
          imagePath: 'icons/burial2.jpg',
          doctorEmail: 'Queens Burial Parlour',
          doctorName: '',
          doctorSpeciality: 'Soweto',
          doctorNumber: 'Haircut Machine',
          doctorLocation: 'Stacking',
          doctorFirm: 'Razor shave',
          doctorGender: 'Beard haircut',
          doctorJob: '',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBurial(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Gauteng', imagePath: 'icons/burial2.jpg',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
        ),

        SizedBox(height: 5,),

        BurialCard(
          imagePath: 'icons/burial3.jpg',
          doctorEmail: 'Ayo Burial Parlour',
          doctorName: '',
          doctorAge: '',
          doctorSpeciality: 'Pretoria',
          doctorNumber: 'Haircut Machine',
          doctorLocation: 'Stacking',
          doctorFirm: 'Razor shave',
          doctorGender: 'Beard haircut',
          doctorJob: '',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBurial(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Gauteng', imagePath: 'icons/burial3.jpg'
              '',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
        ),
      ],
    );
  }
}