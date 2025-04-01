
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/booklawyer.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/lawyerscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/viewbookings.dart';
import 'package:flutter/material.dart';



class DivorceTab extends StatelessWidget{
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
                  hintText: 'search for your laywer by name',
                  suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

              ),
            ),
          ),
        ),

        SizedBox(height: 10,),

        LawyersCard(
          imagePath: 'icons/lawyer1.jpg',
          doctorName: 'Jonny Books',
          doctorLocation: 'Harare',
          doctorGender: 'Male',
          doctorFirm: 'Jonny Human Attoney',
          doctorEmail: 'jonnybooks@gmail.com',
          doctorSpeciality: 'Child Services',
          doctorNumber: '+263 780028122',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
        ),

        SizedBox(height: 5,),

        LawyersCard(
          imagePath: 'icons/lawyer2.jpg',
          doctorName: 'Emmery Books',
          doctorLocation: 'Harare',
          doctorGender: 'Female',
          doctorFirm: 'Jonny Human Attoney',
          doctorEmail: 'emmery@gmail.com',
          doctorSpeciality: 'Divorce',
          doctorNumber: '+263 780028122',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
        ),

        SizedBox(height: 5,),

        LawyersCard(
          imagePath: 'icons/lawyer3.jpg',
          doctorName: 'Smith Antony',
          doctorLocation: 'Harare',
          doctorGender: 'Male',
          doctorFirm: 'Jonny Human Attoney',
          doctorEmail: 'smith@gmail.com',
          doctorSpeciality: 'Child Services',
          doctorNumber: '+263 780028122',
          viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
          bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
        ),

      ],
    );
  }
}