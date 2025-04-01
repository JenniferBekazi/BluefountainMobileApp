import 'package:flutter/material.dart';

import '../profile.dart';
import '../components/drawercomponent.dart';
import '../components/bottomnavigationbar.dart';
import '../components/successdialog.dart';
import 'labtestsmenu.dart';

class ScheduleTest extends StatefulWidget{
  const ScheduleTest({Key ? key}): super(key : key);

  State<ScheduleTest> createState() => _ScheduleTestState();
}

class _ScheduleTestState extends State<ScheduleTest>{
  //success dialog
  void _showSuccessDialog(context) => showDialog(
    context: context,
    builder: (context) => SuccessDialog(toClass: LabTestsMenu()),
  );

  //controllers
  final doctornameController = TextEditingController();
  final emailController = TextEditingController();
  final labController = TextEditingController();
  final requirementsController = TextEditingController();

  //variables
  DateTime testDate = DateTime.now();


  //widgets
  //TODO: Make sure to get details from patient object
  Widget buildPatientDetails() => Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name', style: TextStyle(fontSize: 14)),
        SizedBox(height: 3,),
        Container(
          width:350,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black38,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child:Text('Nyasha Chaingei', style: TextStyle(fontSize: 15)),),
        ),

        SizedBox(height: 10,),

        Text('ID Number', style: TextStyle(fontSize: 14)),
        SizedBox(height: 3,),
        Container(
          width:350,
          padding:EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black38,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child:Text('42 2012680Z42', style: TextStyle(fontSize: 15)),),
        ),

        SizedBox(height: 10,),


        Text('Gender', style: TextStyle(fontSize: 14)),
        SizedBox(height: 3,),
        Container(
          width:350,
          padding:EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black38,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child:Text('Female', style: TextStyle(fontSize: 15)),),
        ),

        SizedBox(height: 10,),

        Text('Phone Number', style: TextStyle(fontSize: 14)),
        SizedBox(height: 3,),
        Container(
          width: 350,
          padding:EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black38,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child:Text('+263 773368966', style: TextStyle(fontSize: 15)),),
        ),

      ],
    ),
  );

  Widget buildDoctor() => Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Doctor Name'),
        TextFormField(
          controller: doctornameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Colors.black38,
                  width: 1.0
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            alignLabelWithHint: true,
            label: Text('doctor name'),
            hintText: 'doctor name',
            suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: () => doctornameController.clear(),),
          ),
        ),

        SizedBox(height: 20,),

        Text('Doctor Email'),
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Colors.black38,
                  width: 1.0
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            alignLabelWithHint: true,
            label: Text('doctor email'),
            hintText: 'doctor email',
            suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: () => emailController.clear(),),
          ),
        ),

      ],
    ),
  );
  
  Widget buildLab() => Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Test Date'),
        SizedBox(height: 3,),
        Column(
          children: <Widget>[
            Container(
              width: 300,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color:Colors.black38,
                  width: 1.0,
                )
              ),
              child: Text(
                "${testDate.year} - ${testDate.month} - ${testDate.day}",
              ),
            ),
            MaterialButton(
              color: Colors.blueGrey,
              hoverColor: Colors.lightBlueAccent,
              elevation: 4,
              child: Text('Choose Date'),
              onPressed: () async{
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: testDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );

                if(dateTime != null){
                  setState(() {
                    testDate = dateTime;
                  });
                }
              },
            ),
          ],
        ),

        SizedBox(height: 10,),

        Text('Lab Name'),
        TextFormField(
          controller: labController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Colors.black38,
                  width: 1.0
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            alignLabelWithHint: true,
            label: Text('Lab Name'),
            hintText: 'Lab Name',
            suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: () => labController.clear(),),
          ),
        ),

        SizedBox(height: 10,),

        Text('Additional Requirements'),
        TextFormField(
          controller: requirementsController,
          maxLines: 8,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Colors.black38,
                  width: 1.0
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            alignLabelWithHint: true,
            label: Text('additional Requirements......'),
            hintText: 'additional Requirements.....',
            suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: () => requirementsController.clear(),),
          ),
        ),

      ],
    ),
  );

  //stepper items
  int stepperIndex = 0;
  List<Step> getSteps() => [
    Step(
      title: Text('Patient Details'),
      subtitle: Text('Please confirm your details.'),
      content: buildPatientDetails(),
      isActive: stepperIndex >= 0,
    ),

    Step(
      title: Text('Doctor Details'),
      subtitle: Text('Please enter your doctor\'s details.'),
      content: buildDoctor(),
      isActive: stepperIndex >= 1,
    ),

    Step(
      title: Text('Test Details'),
      subtitle: Text('Please enter your test details.'),
      content: buildLab(),
      isActive: stepperIndex >= 2,
    ),

  ];


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

      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Schedule Lab Test',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Center(
                  child: Text(
                    'Fill out the form to schedule your lab test',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),

                SizedBox(height: 25,),

                SingleChildScrollView(
                  child: Stepper(
                    physics: ClampingScrollPhysics(),
                    currentStep: stepperIndex,
                    //back button
                    onStepCancel: (){
                      if (stepperIndex > 0){
                        setState(() {stepperIndex -= 1; });
                      }
                    },

                    //continue button
                    onStepContinue: (){
                      final isLastStep = stepperIndex == getSteps().length - 1;

                      if (isLastStep){
                        _showSuccessDialog(context);
                      }else{
                        setState(() {stepperIndex += 1;});

                      }
                    },

                    //button fixes
                    controlsBuilder: (BuildContext context, ControlsDetails details){
                      final isLastStep = stepperIndex == getSteps().length - 1;

                      return Container(
                        child:Row(
                          children: <Widget>[
                            Expanded(
                              child: ElevatedButton(
                                child: Text(isLastStep ? 'SUBMIT' : 'NEXT'),
                                onPressed: details.onStepContinue,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                            ),

                            SizedBox(width: 16,),

                            if(details.currentStep != 0)
                              Expanded(
                                child: ElevatedButton(
                                  child: Text('BACK'),
                                  onPressed: details.onStepCancel,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  ),
                                ),
                              ),


                          ],
                        ),
                      );
                    },
                    onStepTapped: (int index){
                      setState(() {stepperIndex = index;});
                    },

                    //steps
                    steps: getSteps(),
                  ),
                ),

              ],
            ),
          )
      ),

      bottomNavigationBar: NavBar(),
    );
  }
}