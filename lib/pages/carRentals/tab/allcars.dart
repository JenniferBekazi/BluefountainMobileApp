
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/bookcar.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/carscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
import 'package:flutter/material.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';




class AllCarsTab extends StatelessWidget{
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
                  hintText: 'search car Brand',
                  suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

              ),
            ),
          ),
        ),

        SizedBox(height: 5,),

        CarsCard(
          imagePath: 'icons/car1.jpg',
          doctorName: '2011 Audi A1',
          doctorEmail: 'Manual',
          doctorSpeciality: 'Petrol',
          doctorNumber: 'R3000/day',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewCar(callTime: 'R3000/day',doctorLocation: 'Transmission: Manual', doctorName: '2011 Audi A1', imagePath: 'icons/car1.jpg',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
        ),

        SizedBox(height: 5,),

        CarsCard(
          imagePath: 'icons/car2.jpg',
          doctorName: '2018 Audi A1',
          doctorEmail: 'Automatic',
          doctorSpeciality: 'Petrol',
          doctorNumber: 'R1000/day',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewCar(callTime: 'R1000/day',doctorLocation: 'Automatic', doctorName: '2018 Audi A1', imagePath: 'icons/car2.jpg',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
        ),

        SizedBox(height: 5,),

        CarsCard(
          imagePath: 'icons/car3.jpg',
          doctorName: '2021 Kia Picanto 1.0',
          doctorEmail: 'Manual',
          doctorSpeciality: 'Petrol',
          doctorNumber: 'R1000/day',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewCar(callTime: 'R1000/day',doctorLocation: 'Manual', doctorName: '2021 Kia Picanto 1.0', imagePath: 'icons/car3.jpg',))),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookCar())),
        ),

      ],
    );
  }
}