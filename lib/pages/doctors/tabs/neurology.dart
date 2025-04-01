import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/appointmentsstepper.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/viewappointments.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/doctors/components/doctorcard2.dart';
import 'package:flutter/material.dart';


import '../components/doctorcard.dart';
import '../components/bookdoctor.dart';
import '../components/viewdoctor.dart';

class NeurologyTab extends StatefulWidget{
  @override
  State<NeurologyTab> createState() => _NeurologyTabState();
}

class _NeurologyTabState extends State<NeurologyTab> {
  bool isGrid = true;

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Switch to '),
            Switch(
              value: isGrid,
              onChanged: (value) {
                setState(() {
                  isGrid = value;
                });
              },
            ),
            Text(isGrid ? 'ListView' : 'GridView'),
          ],
        ),
        Expanded(
          flex: 4,
          child: isGrid ? buildListView() : buildGridView(),
        ),
      ],
    );
  }

  Widget buildGridView() {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                hintText: 'search for your doctor by name',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 28.0,
                  ),
                  onPressed: () {},)
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: GridView(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
            ),
            shrinkWrap: true,

            children: [
              Expanded(
                flex: 4,
                child:

                DoctorCard2(
                  imagePath: 'icons/doctor1.jpg',
                  doctorName: 'Sammie Pops',
                  doctorLocation: 'Midrand, Guateng',
                  doctorNumber: '+27 781453786',
                  viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
                  bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
                ),
              ),



              DoctorCard2(
                imagePath: 'icons/doctor3.jpg',
                doctorName: 'Jennie Mabuza',
                doctorLocation: 'Tzaneen, Limpopo',
                doctorNumber: '+27 641248624',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
              ),


              DoctorCard2(
                imagePath: 'icons/doctor2.jpg',
                doctorName: 'Sarel Baloyi',
                doctorLocation: 'Waterfall, Pretoria',
                doctorNumber: '+27 699064908',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
              ),



              DoctorCard2(
                imagePath: 'icons/doctor1.jpg',
                doctorName: 'Sammie Pops',
                doctorLocation: 'Midrand, Guateng',
                doctorNumber: '+27 781453786',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
              ),



              DoctorCard2(
                imagePath: 'icons/doctor3.jpg',
                doctorName: 'Jennie Mabuza',
                doctorLocation: 'Tzaneen, Limpopo',
                doctorNumber: '+27 641248624',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
              ),



              DoctorCard2(
                imagePath: 'icons/doctor2.jpg',
                doctorName: 'Sarel Baloyi',
                doctorLocation: 'Waterfall, Pretoria',
                doctorNumber: '+27 699064908',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
              ),
            ]

        ),
      ),
    ]
    );
  }

  Widget buildListView() {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  hintText: 'search by name or location',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 28.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            DoctorCard(
              imagePath: 'icons/doctor1.jpg',
              doctorName: 'Sammie Pops',
              doctorLocation: 'Midrand, Guateng',
              doctorNumber: '+27 781453786',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
            ),

            SizedBox(height: 5,),

            DoctorCard(
              imagePath: 'icons/doctor3.jpg',
              doctorName: 'Jennie Mabuza',
              doctorLocation: 'Tzaneen, Limpopo',
              doctorNumber: '+27 641248624',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
            ),

            SizedBox(height: 5,),

            DoctorCard(
              imagePath: 'icons/doctor2.jpg',
              doctorName: 'Sarel Baloyi',
              doctorLocation: 'Waterfall, Pretoria',
              doctorNumber: '+27 699064908',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
            ),

            SizedBox(height: 10,),

            DoctorCard(
              imagePath: 'icons/doctor1.jpg',
              doctorName: 'Sammie Pops',
              doctorLocation: 'Midrand, Guateng',
              doctorNumber: '+27 781453786',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
            ),

            SizedBox(height: 5,),

            DoctorCard(
              imagePath: 'icons/doctor3.jpg',
              doctorName: 'Jennie Mabuza',
              doctorLocation: 'Tzaneen, Limpopo',
              doctorNumber: '+27 641248624',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
            ),

            SizedBox(height: 5,),

            DoctorCard(
              imagePath: 'icons/doctor2.jpg',
              doctorName: 'Sarel Baloyi',
              doctorLocation: 'Waterfall, Pretoria',
              doctorNumber: '+27 699064908',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAppointments(bookings: [],))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentsStepper())),
            ),
          ],
        );
      },
    );
  }
}