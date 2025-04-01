import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barbers.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/burial.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/toggle.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/cars.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/tab/allcars.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carwash/car.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carwash/carwash.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/doctors/components/viewbookingscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/in_app_messaging.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/lawyers.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/online_appointment.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/payments/components/paymentmethod/paymentmethod.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/saloon/saloon.dart';
import 'package:flutter/material.dart';

import 'components/bottomnavigationbar.dart';
import 'components/drawercomponent.dart';
import 'profile.dart';
import 'appointments/appointmentsmenu.dart';
import 'patientdetails/detailsmenu.dart';
import 'payments/paymentsmenu.dart';
import 'doctors/doctors.dart';
import 'prescriptions/prescriptionsmenu.dart';
import 'labtests/labtestsmenu.dart';
import 'quotations/quotationsmenu.dart';
import 'surgeries/viewsurgeries.dart';
import 'doctornotes/notes.dart';
import 'documents/documents.dart';
import 'medicalhistory/medicalhistorymenu.dart';
import 'reviews/reviews.dart';
import 'billingstatements/billingstatements.dart';
import 'mycalendar/mycalendar.dart';
import 'dental/dentalmenu.dart';
import 'myvisits/myvisits.dart';
import 'admissions/admissions.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key ? key}): super(key : key);

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{


  // void _showDetailsDialog(context) => showDialog(
  //   context: context,
  //   builder: (context) => DetailsMenu(),
  // );


  @override
  Widget build(BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Home Page'),
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
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile())),
              icon: Icon(Icons.person),
          ),
        ],
      ),
      drawer: DrawerClass(),

      body: Column(
        children: <Widget>[
          PhysicalModel(
              color: Colors.white,
              shadowColor: Colors.blue,
              elevation: 8,
              child: Container(
                //Top part container with the image on the home page
                width: MediaQuery.of(context).size.width,
                height: 90,//MediaQuery.of(context).size.height,
                child: Image.asset(
                  'icons/blufountainLogo.jpg',
                  fit: BoxFit.fitHeight,
                ),
              )
          ),

          SizedBox(height: 10,),

          Expanded(
            flex: 3,
            child: GridView(
              padding: EdgeInsets.only(left: 13.0, right: 13.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
              ),
          children: <Widget>[



            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  // onTap: () => _showDetailsDialog(context),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/profilepic.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('My Details',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Saloon())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/saloon.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Book A Saloon',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],//() => _showClaimsDialog(context),
                  ),
                ),
              ),
            ),








            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Barbers())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/barber.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Find A Barber',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),



            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Doctors())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/doctor.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Book A Doctor',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),



            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Lawyers())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/lawyer.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Find A lawyer',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),




            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Burial())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/burial.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('My Burial Society',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FeedbackScreen())),
                  //() => _showClaimsDialog(context),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/bus.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('My Bus Bookings',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),







            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentsM())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/farmers.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Farmers Market',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),



            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentsMenu())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/payments.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('My Payments',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),



            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillingStatements())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/statement.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Billing Statements',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12,),)
                      )
                    ],
                  ),
                ),
              ),
            ),




            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Car())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/carwash.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Car Wash NearMe',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),
            //
            //
            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cars())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/rentcar.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Rent A Car',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),


            //build reviews widget
            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reviews())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/review.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Reviews',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),


            //build my calendar widget
            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                   // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/engineer.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('My Engineer',style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                   onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookAppointmentScreen(doctor: Doctor(id: '1', name: 'JEN', specialty: 'MAIL')))),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/wedding.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Wedding Planner',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),


            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                   //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => View())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/cake.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Event Cakes',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorCard3())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/pastor.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Book Pastor',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reviews())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/hall.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Local Community Hall',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reviews())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/music.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Book Musician',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reviews())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/comedian.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Book Comedian',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),

            PhysicalShape(
              color: Colors.white,
              elevation: 8,
              shadowColor: Colors.blue,
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  )
              ),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.20,
                // width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reviews())),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Image.asset('icons/photographer.png')
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Book Photographer',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                      )
                    ],
                  ),
                ),
              ),
            ),





            //
            //
            // //build eye health widget
            // PhysicalShape(
            //   color: Colors.white,
            //   elevation: 8,
            //   shadowColor: Colors.blue,
            //   clipper: ShapeBorderClipper(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(12.0)
            //       )
            //   ),
            //   child: Container(
            //     // height: MediaQuery.of(context).size.height * 0.20,
            //     // width: MediaQuery.of(context).size.width * 0.35,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     child: GestureDetector(
            //       onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DentalMenu())),
            //       child: Column(
            //         children: [
            //           Expanded(
            //               flex:2,
            //               child: Image.asset('icons/eyehealth.png')
            //           ),
            //           Expanded(
            //               flex: 1,
            //               child: Text('Eye Health',style: TextStyle(fontWeight: FontWeight.bold),)
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),







          ],
            ),
          )

        ],
      ),
    bottomNavigationBar: NavBar(),
    );
  }
}

