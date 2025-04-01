

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/beardhaircut.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/haircutmachine.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/hairstyling.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/razorshave.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/tab/stacking.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/viewbookings.dart';
import 'package:flutter/material.dart';

import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';


class Barbers extends StatefulWidget{
  const Barbers({Key ? key}): super(key : key);

  State<Barbers> createState() => _BarbersState();
}

class _BarbersState extends State<Barbers>  with SingleTickerProviderStateMixin{

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
        title: Text('Find A Barber'),
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
             onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarbers( bookings: [],))),
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
              text: 'Beard Haircut',
            ),

            Tab(
              text: 'Haircut Machine',
            ),

            Tab(
              text: 'Hairstyling',
            ),

            Tab(
              text: 'Razor Shave',
            ),

            Tab(
              text: 'Stacking',
            ),


          ],
        ),
      ),

      drawer: DrawerClass(),

      body: TabBarView(
        controller: _tabController,
        children: [

          BeardHaircutTab(),

          HaircutMachineTab(),


          HairstylingTab(),

          RazorShaveTab(),


          StackingTab(),




        ],
      ),

      bottomNavigationBar: NavBar(),
    );
  }
}