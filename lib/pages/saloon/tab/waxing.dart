import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/bookbarber.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/moreInfor.dart';

import 'package:flutter/material.dart';






class WaxingTab extends StatefulWidget{
  const WaxingTab({Key ? key}): super(key : key);

  State<WaxingTab> createState() => _WaxingTabState();
}

class _WaxingTabState extends State<WaxingTab>  {
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
