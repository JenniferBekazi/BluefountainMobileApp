import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/viewbookings.dart';
import 'package:flutter/material.dart';

import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';
import '../profile.dart';
import 'tab/adoption.dart';
import 'tab/banking.dart';
import 'tab/childServices.dart';
import 'tab/criminal.dart';
import 'tab/divorce.dart';
import 'tab/pension.dart';
import 'tab/retirementFunds.dart';


class Lawyers extends StatefulWidget{
  const Lawyers({Key ? key}): super(key : key);

  State<Lawyers> createState() => _LawyersState();
}

class _LawyersState extends State<Lawyers>  with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Find A Lawyer'),
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
        bottom: TabBar(
          controller: _tabController,
          physics: AlwaysScrollableScrollPhysics(),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              text: 'Divorce',
            ),

            Tab(
              text: 'Child Services',
            ),

            Tab(
              text: 'Adoption',
            ),

            Tab(
              text: 'Criminal',
            ),

            Tab(
              text: 'Banking',
            ),

            Tab(
              text: 'Pernsion',

            ),

            Tab(
              text: 'Retirement Funds',
            ),
            InkWell(
              onTap: () {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ViewBookings()));}, //,
              child: const Text(
                'Bookings',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,

                ),
              ),
            ),

          ],
        ),
      ),

      drawer: DrawerClass(),

      body: TabBarView(
        controller: _tabController,
        children: [
          //adoption tab
          AdoptionTab(),

          //banking tab
          BankingTab(),

          //childservice tab
          ChildServicesTab(),

          //criminal tab
          CriminalTab(),


          //divorce tab
          DivorceTab(),


          //pension tab
          PensionTab(),


          //retirement tab
          RetirementTab(),

        ],
      ),

      bottomNavigationBar: NavBar(),
    );
  }
}