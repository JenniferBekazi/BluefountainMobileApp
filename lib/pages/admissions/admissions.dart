import 'package:flutter/material.dart';

import '../profile.dart';
import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';

class Admissions extends StatefulWidget{
  const Admissions({Key ? key}): super(key : key);

  State<Admissions> createState() => _AdmissionsState();
}

class _AdmissionsState extends State<Admissions>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Admissions'),
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

      body: Column(),

      bottomNavigationBar: NavBar(),
    );
  }
}