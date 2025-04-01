import 'package:flutter/material.dart';

import '../profile.dart';
import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';
import 'components/categorycard.dart';
import 'components/notecard.dart';
import 'components/viewcomponent.dart';

class Notes extends StatefulWidget{
  const Notes({Key ? key}): super(key : key);

  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes>{

  //dialog method
  viewDialog(context, String noteTitle, String noteBody, String doctorName, String hospitalName) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      title: Text(noteTitle),
      content: ViewComponent(noteBody: noteBody,doctorName: doctorName, hospitalName: hospitalName,),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Close'),
        )
      ],
    )
  );


  String? screenVariable = '';
  //TODO: get note data from db

  String bodyVariable = 'The results of the CT scan demonstrated a reduction in the size of the previously identified lesion, suggesting successful treatment efficacy.'
  '\n There were no new abnormalities detected on the recent CT scan, indicating stability in the patient\'s condition.'
  '\n The CT scan findings are consistent with the initial diagnosis, supporting the accuracy of the treatment approach.'
  '\nBased on the CT scan update, we will continue the current treatment plan while closely monitoring the patient\'s progress.';



  Widget buildAll() => Padding(
    padding: EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NoteCard(
            noteTitle: 'CT Scan update',
            function: () => viewDialog(context, 'CT Scan update', bodyVariable, 'Osamu Dazai', 'Port Mafia Medical Center',),
            noteBody: 'The results of the CT scan demonstrated a reduction in the size of the previously identified lesion, suggesting successful treatment efficacy.'
          '\n There were no new abnormalities detected on the recent CT scan, indicating stability in the patient\'s condition.'
          '\n The CT scan findings are consistent with the initial diagnosis, supporting the accuracy of the treatment approach.'
          '\nBased on the CT scan update, we will continue the current treatment plan while closely monitoring the patient\'s progress. ',
          ),

          SizedBox(height: 10,),

          NoteCard(
            noteTitle: 'New Checkup',
            function: () => viewDialog(context, 'New Checkup', bodyVariable,'Osamu Dazai', 'Port Mafia Medical Center',),
            noteBody: 'The results of the CT scan demonstrated a reduction in the size of the previously identified lesion, suggesting successful treatment efficacy.'
            '\n There were no new abnormalities detected on the recent CT scan, indicating stability in the patient\'s condition.'
           '\n The CT scan findings are consistent with the initial diagnosis, supporting the accuracy of the treatment approach.'
          '\nBased on the CT scan update, we will continue the current treatment plan while closely monitoring the patient\'s progress.',
          ),

          SizedBox(height: 10,),

          NoteCard(
            noteTitle: 'Old Checkup',
            function: () => viewDialog(context, 'Old Checkup', bodyVariable,'Osamu Dazai', 'Port Mafia Medical Center',),
            noteBody: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                '\n Maecenas posuere ligula dapibus, consectetur sapien in, sagittis lorem.'
                '\n  Mauris efficitur quam nisi, ut eleifend erat lacinia volutpat. Praesent rutrum efficitur cursus. '
                '\n In vitae tincidunt nisl. Etiam sed ante molestie, imperdiet erat ut, gravida dui.'
                '\n Phasellus in imperdiet massa. \n Vivamus a facilisis nunc, ultricies imperdiet tellus. Nullam fringilla sapien congue libero lobortis, vitae dapibus orci mollis. Proin malesuada sed lorem consequat porttitor. ',
          ),
        ],
      ),
    ),
  );


  Widget buildNew() => Padding(
    padding: EdgeInsets.all(9.0),
    child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NoteCard(
            noteTitle: 'CT Scan update',
            function: () => viewDialog(context, 'CT Scan update', bodyVariable,'Osamu Dazai', 'Port Mafia Medical Center',),
            noteBody: 'The results of the CT scan demonstrated a reduction in the size of the previously identified lesion, suggesting successful treatment efficacy.'
                '\n There were no new abnormalities detected on the recent CT scan, indicating stability in the patient\'s condition.'
                '\n The CT scan findings are consistent with the initial diagnosis, supporting the accuracy of the treatment approach.'
                '\nBased on the CT scan update, we will continue the current treatment plan while closely monitoring the patient\'s progress.',
          ),

          SizedBox(height: 10,),

          NoteCard(
            noteTitle: 'New Checkup',
            function: () => viewDialog(context, 'New Checkup', bodyVariable,'Osamu Dazai', 'Port Mafia Medical Center',),
            noteBody: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                '\n Maecenas posuere ligula dapibus, consectetur sapien in, sagittis lorem.'
                '\n  Mauris efficitur quam nisi, ut eleifend erat lacinia volutpat. Praesent rutrum efficitur cursus. '
                '\n In vitae tincidunt nisl. Etiam sed ante molestie, imperdiet erat ut, gravida dui.Phasellus in imperdiet massa.'
                '\n Vivamus a facilisis nunc, ultricies imperdiet tellus. Nullam fringilla sapien congue libero lobortis, vitae dapibus orci mollis.'
                ' \n Proin malesuada sed lorem consequat porttitor. ',
          ),


        ],
      ),
    ),
  );


  Widget buildOld() => Padding(
    padding: EdgeInsets.all(9.0),
    child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NoteCard(
            noteTitle: 'Old Checkup',
            function: () => viewDialog(context, 'Old Checkup', bodyVariable,'Osamu Dazai', 'Port Mafia Medical Center',),
            noteBody: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                '\nMaecenas posuere ligula dapibus, consectetur sapien in, sagittis lorem.'
                '\n Mauris efficitur quam nisi, ut eleifend erat lacinia volutpat. Praesent rutrum efficitur cursus. '
                '\nIn vitae tincidunt nisl. Etiam sed ante molestie, imperdiet erat ut, gravida dui.Phasellus in imperdiet massa. '
                '\nVivamus a facilisis nunc, ultricies imperdiet tellus. Nullam fringilla sapien congue libero lobortis, vitae dapibus orci mollis. Proin malesuada sed lorem consequat porttitor. ',
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Doctor\'s Notes'),
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
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5,),

              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(10),
                child:Container(
                  padding: EdgeInsets.all(8.0),
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]
                  ),
                  child: Center(
                    child: Text(
                      'My Notes',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ) ,
              ),

              SizedBox(height: 20,),

              //categories section
              SizedBox(
                height: 75,
                child: ListView(
                  padding: EdgeInsets.all(9.0),
                   physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    CategoryCard(
                      categoryVariable: 'All',
                      colorVariable: Colors.blue,
                      function: () {setState(() { screenVariable = 'all'; });},
                    ),

                    SizedBox(width: 10,),

                    CategoryCard(
                      categoryVariable: 'New',
                      colorVariable: Colors.greenAccent,
                      function: () {setState(() { screenVariable = 'new'; });},
                    ),

                    SizedBox(width: 10,),

                    CategoryCard(
                      categoryVariable: 'Old',
                      colorVariable: Colors.orangeAccent,
                      function: () {setState(() { screenVariable = 'old'; });},
                    ),
                  ],
                ),
              ),

             SingleChildScrollView(
               physics: ClampingScrollPhysics(),
               child: Column(
                 children: [
                   (screenVariable == 'all')?
                   buildAll():
                   (screenVariable == 'new')?
                   buildNew():
                   (screenVariable == 'old')?
                   buildOld():
                   Container(
                     child: Center(
                       child: Text('Select Tab'),
                     ),
                   ),
                 ],
               ),
             ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: NavBar(),
    );
  }
}