
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/bookbarber.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/moreInfor.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/bookcar.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/carscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
import 'package:flutter/material.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';




class AllBarbersTab extends StatelessWidget{
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
                  hintText: 'search Barbers name',
                  suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

              ),
            ),
          ),
        ),


        SizedBox(height: 5,),


        BarberCard(
          imagePath: 'icons/barber1.png',
          doctorName: 'R200',
          doctorEmail: 'Bophelo',
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
          doctorEmail: 'Shabani',
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
          doctorEmail: 'Itumeleng',
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