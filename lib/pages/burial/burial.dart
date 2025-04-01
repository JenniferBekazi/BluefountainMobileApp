
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/tab/caskets.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/tab/clothing.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/tab/hearses.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/tab/tombstone.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/tab/urns.dart';

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
import 'package:flutter/material.dart';

import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Burial extends StatefulWidget{
  const Burial({Key ? key}): super(key : key);

  State<Burial> createState() => _BurialState();
}

class _BurialState extends State<Burial>  with SingleTickerProviderStateMixin{

  late TabController _tabController;
  bool isSwitched = true;

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
        title: Text('My Burial Society'),
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
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
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
              text: 'Caskets',
            ),

            Tab(
              text: 'Clothing',
            ),

            Tab(
              text: 'Hearses',
            ),

            Tab(
              text: 'Tombstone',
            ),

            Tab(
              text: 'Urns',
            ),


          ],
        ),
      ),



        drawer: DrawerClass(),

      body: TabBarView(
        controller: _tabController,
        children: [

          CasketsTab(),

          ClothingTab(),


          HearsesTab(),

          TombstoneTab(),


          UrnTab(),




        ],
      ),


      bottomNavigationBar: NavBar(),
        // Switch(
        //   value: isSwitched,
        //   onChanged: (value) {
        //     setState(() {
        //       isSwitched = value;
        //     });
        //   },
        // ),

    //     if (isSwitched)
    // CasketsTab()
    // else
    // ClothingTab(),
    );
  }
}