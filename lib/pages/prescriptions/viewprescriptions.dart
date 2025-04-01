import 'package:flutter/material.dart';

import '../components/drawercomponent.dart';
import '../profile.dart';
import '../components/bottomnavigationbar.dart';
import 'components/prescriptioncard.dart';
import 'components/prescriptioninfo.dart';


class ViewPrescriptions extends StatefulWidget{
  const ViewPrescriptions({Key ? key}): super(key : key);
  static const route = '/viewprescriptions';

  State<ViewPrescriptions> createState() => _ViewPrescriptionsState();
}

class _ViewPrescriptionsState extends State<ViewPrescriptions>{
  @override
  Widget build(BuildContext context){
    //can be used to display message data from notification
    final message = ModalRoute.of(context)!.settings.arguments;

    //search controller
    final searchController = TextEditingController();


    return Scaffold(
      appBar:  AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Prescriptions'),
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

      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [

               Material(
                 elevation: 2,
                 borderRadius: BorderRadius.circular(10),
                 child: Container(
                   width: 900,
                   height: 60,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child:  Center(
                     child: Text(
                       'My Prescriptions',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 25,
                       ),
                     ),
                   ),
                 ),
               ),

                SizedBox(height: 20,),

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
                          hintText: 'search by prescription id',
                          suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                //TODO: Assign variables with data from db to use here
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-15',
                      prescriptionID: 'APP4567',
                      viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrescriptionInfo(
                        date: '2023-05-15',dosage: '500 mg', medication: 'Acetaminophen', frequency: 'Twice Daily', duration: '10 Days', instructions: 'Take with food', precautions: 'Avoid driving or operating heavy machinery.',
                      ))),
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Adderall',
                      date: '2023-01-12',
                      prescriptionID: 'APP4567',
                      viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrescriptionInfo(
                        date: '2023-01-12',dosage: '500 mg', medication: 'Adderall', frequency: 'Twice Daily', duration: '10 Days', instructions: 'Take with food', precautions: 'Avoid driving or operating heavy machinery.',
                      ))),
                    ),

                  ],
                ),

                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Amlodipine',
                      date: '2023-02-12',
                      prescriptionID: 'APP5643',
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Amoxicillin',
                      date: '2023-03-12',
                      prescriptionID: 'APP7896',
                    ),
                  ],
                ),

                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Ativan',
                      date: '2023-05-12',
                      prescriptionID: 'APP7654',
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Amitriplyne',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),
                  ],
                ),

                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),
                  ],
                ),

                SizedBox(height: 15,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),
                  ],
                ),

                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),
                  ],
                ),

                SizedBox(height: 15,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),
                  ],
                ),

                SizedBox(height: 15,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),

                    //SizedBox(width: 20,),

                    PrescriptionCard(
                      prescriptionName: 'Acetaminophen',
                      date: '2023-05-12',
                      prescriptionID: 'APP4567',
                    ),
                  ],
                ),

                SizedBox(height: 15,),



                // Material(
                //   elevation: 2,
                //   borderRadius: BorderRadius.circular(10),
                //   child: Container(
                //     padding: EdgeInsets.all(12),
                //     decoration: BoxDecoration(
                //       borderRadius:  BorderRadius.circular(10),
                //       color: Colors.blue.withOpacity(0.12),
                //     ),
                //     child: ExpansionTile(
                //       title: Text('Prescription ID: APP4567'),
                //       children: [
                //         PrescriptionData(
                //           date: '2023-05-12',
                //           medication: 'Acetaminophen',
                //           dosage: '500 mg',
                //           frequency: 'Twice Daily',
                //           duration: '10 Days',
                //           instructions: 'Take with food',
                //           precautions: 'Avoid driving or operating heavy machinery.',
                //         ),
                //       ],
                //     ),
                //   ),
                // ),








              ],
            ),
          ),
      ),

      bottomNavigationBar: NavBar(),
    );

  }
}

