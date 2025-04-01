import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:http/http.dart' as http;



import '../profile.dart';
import '../components/bottomnavigationbar.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewcomponent.dart';

class ViewBookings extends StatefulWidget{
  const ViewBookings({Key ? key}): super(key : key);

  State<ViewBookings> createState() => _ViewBookingsState();
}

class _ViewBookingsState extends State<ViewBookings>{
  //api calls
  Future<void>? getappointments() async{
    final url = Uri.parse('http://192.168.8.107:3001/mongo/patient/');

    try{
      final response = await http.get(url);

      if(response.statusCode == 200){
        final data = jsonDecode(response.body);
        print(data);
      }
    }catch (e){
      print(e.toString());
    }

  }

  //build tabs
  Widget _buildUpcoming() => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                icon: Icons.remove_red_eye_outlined,
                backgroundColor: Colors.blueAccent,
                label: 'View',
                onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(firstname: "Brian", lastname: "Mashavakure",  department: "Dermatology", date: "23-08-2023", time: "14:00", doctor: "Doctor Blythe"))),
              ),

              SlidableAction(
                icon: Icons.cancel_sharp,
                backgroundColor: Colors.redAccent,
                label: 'Cancel',
                onPressed: (context) => print('cancel'),
              ),
            ],
          ),
          child: ListTile(
            title: Text(''),
          ),
        ),

        SizedBox(height: 2,),

        Divider(
          color: Colors.grey[80],
          height: 3,
          thickness: 2,
        ),

        SizedBox(height: 2,),

        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                icon: Icons.remove_red_eye_outlined,
                backgroundColor: Colors.blueAccent,
                label: 'View',
                onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(firstname: "Eren", lastname: "Yeager",  department: "Personal Health", date: "15-07-2023", time: "08:00", doctor: "Doctor Kanzo"))),
              ),

              SlidableAction(
                icon: Icons.cancel_sharp,
                backgroundColor: Colors.redAccent,
                label: 'Cancel',
                onPressed: (context) => print('cancel'),
              ),
            ],
          ),
          child: ListTile(
            title: Text(''),
          ),
        ),


      ],
    ),
  );

  Widget _buildPending() => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                icon: Icons.remove_red_eye_outlined,
                backgroundColor: Colors.blueAccent,
                label: 'View',
                onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(firstname: "Gojo", lastname: "Satoru",  department: "Radiology", date: "01-12-2023", time: "16:00", doctor: "Doctor Blythe"))),
              ),

              SlidableAction(
                icon: Icons.cancel_sharp,
                backgroundColor: Colors.redAccent,
                label: 'Cancel',
                onPressed: (context) => print('cancel'),
              ),
            ],
          ),
          child: ListTile(
            title: Text('Mammogram with Dr Law on 01-12-2023 at 16:00'),
          ),
        ),

        SizedBox(height: 2,),

        Divider(
          color: Colors.grey[80],
          height: 3,
          thickness: 2,
        ),

        SizedBox(height: 2,),

        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                icon: Icons.remove_red_eye_outlined,
                backgroundColor: Colors.blueAccent,
                label: 'View',
                onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(firstname: "Brian", lastname: "Mashavakure",  department: "Dermatology", date: "17-09-2023", time: "15:00", doctor: "Doctor Dazai"))),
              ),

              SlidableAction(
                icon: Icons.cancel_sharp,
                backgroundColor: Colors.redAccent,
                label: 'Cancel',
                onPressed: (context) => print('cancel'),
              ),
            ],
          ),
          child: ListTile(
            title: Text('Goitre treatment checkup on 17-09-2023 at 15:00'),
          ),
        ),



      ],
    ),
  );

  Widget _buildCanceled() => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                icon: Icons.remove_red_eye_outlined,
                backgroundColor: Colors.blueAccent,
                label: 'View',
                onPressed: (context) => print('view'),
              ),

              SlidableAction(
                icon: Icons.delete_forever,
                backgroundColor: Colors.redAccent,
                label: 'Delete',
                onPressed: (context) => print('delete'),
              ),
            ],
          ),
          child: ListTile(
            title: Text('Dermatology session on 02-05-2023 at 07:00'),
          ),
        ),

      ],
    ),
  );


  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('View Bookings'),
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

              tabs: [
                //upcoming tab
                Tab(
                  icon: Icon(Icons.playlist_add, color: Colors.lightGreenAccent,),
                  text: 'Upcoming',
                ),

                //pending tab
                Tab(
                  icon: Icon(Icons.remove_red_eye_rounded, color: Colors.lightBlueAccent,),
                  text: 'Pending',
                ),

                //cancelled tab
                Tab(
                  icon: Icon(Icons.cancel_outlined, color: Colors.redAccent,),
                  text: 'Canceled',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[

              _buildUpcoming(),

              _buildPending(),

              _buildCanceled(),

            ],

          ),

          bottomNavigationBar: NavBar(),

        ),

      ),
    );
  }
}