import 'package:flutter/material.dart';
import 'components/resultinformation.dart';
import 'components/resultcard.dart';
import 'components/labcard.dart';

import '../profile.dart';
import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';

class TestResults extends StatefulWidget{
  const TestResults({Key ? key}): super(key : key);

  State<TestResults> createState() => _TestResultsState();
}

class _TestResultsState extends State<TestResults>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Lab Tests'),
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

      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(

            children: [


             Material(
               elevation: 3,
               borderRadius: BorderRadius.circular(10),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.blue
                 ),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Center(
                       child: Text(
                         'Lab Test Results',
                         style: TextStyle(
                           fontSize: 40,
                           fontWeight: FontWeight.bold,
                           color: Colors.white
                         ),
                       ),
                     ),

                     SizedBox(height: 10,),

                     // Center(
                     //   child: Text(
                     //     'View your test results',
                     //     style: TextStyle(
                     //       fontWeight: FontWeight.bold,
                     //       fontSize: 25,
                     //         color: Colors.white
                     //     ),
                     //   ),
                     // ),

                   ],
                 ),
               ),
             ),

              SizedBox(height: 15,),

              //view labs
              Text('View Labs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),textAlign: TextAlign.left, textDirection: TextDirection.ltr),

              SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(10),
                    children: [
                      LabCard(
                        labName: 'Mikel Labs',
                        imageUrl: 'icons/mikel.jpg',
                        viewLab: (){},
                      ),

                      SizedBox(width: 20,),

                      //TODO: Add lab details component
                      LabCard(
                        labName: 'Cimas Labs',
                        imageUrl: 'icons/cimas.jpeg',
                        viewLab: (){},
                      ),

                      SizedBox(width: 20,),

                      LabCard(
                        labName: 'Clicks Labs',
                        imageUrl: 'icons/clicks.jpg',
                        viewLab: (){},
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 450,
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: ListView(
                    padding: EdgeInsets.all(8.0),
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [

                      ResultCard(
                        testName: 'Blood Cell Count Test',
                        doctorName: 'Makomborero Mushangwe',
                        labName: 'Mikel Labs',
                        viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultInformation(
                          labName: 'Mikel Labs',
                          doctorName: 'Makomborero Mushangwe',
                          testDate: '2023-05-12',
                          testName: 'Blood Cell Count Test',
                          results: 'whiteBloodCells: 7500,redBloodCells:5.2,hemoglobin: 14.2, plateletCount: 200000,',
                          comments: 'White blood cell count is within the normal range, indicating a healthy immune system.\n Red blood cell count and hemoglobin levels are slightly low, suggesting mild anemia. \n Further investigation is recommended.\n Platelet count is within the normal range, indicating normal blood clotting ability.',
                        ))),
                      ),

                      SizedBox(height: 9,),

                      ResultCard(
                        testName: 'Blood Cell Count Test',
                        doctorName: 'Makomborero Mushangwe',
                        labName: 'Mikel Lab',
                        viewFunction:  () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultInformation(
                          labName: 'Mikel Labs',
                          doctorName: 'Makomborero Mushangwe',
                          testDate: '2023-05-12',
                          testName: 'Blood Cell Count Test',
                          results: 'whiteBloodCells: 7500,redBloodCells:5.2,hemoglobin: 14.2, plateletCount: 200000,',
                          comments: 'White blood cell count is within the normal range, indicating a healthy immune system.\n Red blood cell count and hemoglobin levels are slightly low, suggesting mild anemia. \n Further investigation is recommended.\n Platelet count is within the normal range, indicating normal blood clotting ability.',
                        ))),
                      ),

                      SizedBox(height: 9,),

                      ResultCard(
                        testName: 'Blood Cell Count Test',
                        doctorName: 'Makomborero Mushangwe',
                        labName: 'Mikel Lab',
                        viewFunction:  () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultInformation(
                          labName: 'Mikel Labs',
                          doctorName: 'Makomborero Mushangwe',
                          testDate: '2023-05-12',
                          testName: 'Blood Cell Count Test',
                          results: 'whiteBloodCells: 7500,redBloodCells:5.2,hemoglobin: 14.2, plateletCount: 200000,',
                          comments: 'White blood cell count is within the normal range, indicating a healthy immune system.\n Red blood cell count and hemoglobin levels are slightly low, suggesting mild anemia. \n Further investigation is recommended.\n Platelet count is within the normal range, indicating normal blood clotting ability.',
                        ))),
                      ),

                      SizedBox(height: 9,),

                      ResultCard(
                        testName: 'Blood Cell Count Test',
                        doctorName: 'Makomborero Mushangwe',
                        labName: 'Mikel Lab',
                        viewFunction:  () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultInformation(
                          labName: 'Mikel Labs',
                          doctorName: 'Makomborero Mushangwe',
                          testDate: '2023-05-12',
                          testName: 'Blood Cell Count Test',
                          results: 'whiteBloodCells: 7500,redBloodCells:5.2,hemoglobin: 14.2, plateletCount: 200000,',
                          comments: 'White blood cell count is within the normal range, indicating a healthy immune system.\n Red blood cell count and hemoglobin levels are slightly low, suggesting mild anemia. \n Further investigation is recommended.\n Platelet count is within the normal range, indicating normal blood clotting ability.',
                        ))),
                      ),

                    ],
                  ),
                ),
              ),





            ],
          )
      ),

      bottomNavigationBar: NavBar(),

    );
  }
}