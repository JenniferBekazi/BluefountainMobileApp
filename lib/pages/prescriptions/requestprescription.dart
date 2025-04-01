import 'package:flutter/material.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';

import '../components/drawercomponent.dart';
import '../profile.dart';
import '../components/bottomnavigationbar.dart';
import '../components/listitemsclass.dart';
import '../components/successdialog.dart';
import 'prescriptionsmenu.dart';


class RequestPrescription extends StatefulWidget{
  const RequestPrescription({Key ? key}): super(key : key);

  State<RequestPrescription> createState() => _RequestPrescriptionState();
}

class _RequestPrescriptionState extends State<RequestPrescription>{
  //success dialog
  void _showSuccessDialog(context) => showDialog(
    context: context,
    builder: (context) => SuccessDialog(toClass: PrescriptionsMenu()),
  );

  //controllers
  final doctornameController = TextEditingController();
  final emailController = TextEditingController();
  final prescriptionIdController = TextEditingController();
  final reasonController = TextEditingController();

  //variables
  DateTime collectionDate = DateTime.now();
  String? pharmacy;


  //widget build methods
  Widget buildPatient() => Padding(
    padding: const EdgeInsets.all(8.0),
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
    padding: EdgeInsets.all(12),
    child: Column(
      mainAxisSize: MainAxisSize.min,
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

        SizedBox(height: 10,),

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


  Widget buildPrescription() => Padding(
    padding: EdgeInsets.all(12),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Text('Prescription ID'),
        SizedBox(
          width: 280,
          child: TextFormField(
            controller: prescriptionIdController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                    color: Colors.black38,
                    width: 1.0
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              alignLabelWithHint: true,
              label: Text('Prescription id'),
              hintText: 'Prescription id',
              suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: () => prescriptionIdController.clear(),),
            ),
          ),
        ),

        SizedBox(height: 10,),

        Text('Collection Date'),
        SizedBox(height: 3,),
        Column(
          children: <Widget>[
            Text(
              "${collectionDate.year} - ${collectionDate.month} - ${collectionDate.day}",
            ),
            MaterialButton(
              color: Colors.blueGrey,
              hoverColor: Colors.lightBlueAccent,
              elevation: 4,
              child: Text('Choose Date'),
              onPressed: () async{
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: collectionDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );

                if(dateTime != null){
                  setState(() {
                    collectionDate = dateTime;
                  });
                }
              },
            ),
          ],
        ),

        SizedBox(height: 10,),

        Text('Reason For Request'),
        SizedBox(
          width: 280,
          child: TextFormField(
            controller: reasonController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                    color: Colors.black38,
                    width: 1.0
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              alignLabelWithHint: true,
              label: Text('Reason'),
              hintText: 'Reason',
              suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: () => reasonController.clear(),),
            ),
          ),
        ),

        SizedBox(height: 10,),


        Text('Pharmacy'),
        SizedBox(
          height: 80,
          width: 320,
          child: DropDownField(
            value: pharmacy,
            hintText: 'Select Pharmacy',
            dataSource: ListItems().pharmacyItems,
            onChanged: (value){
              setState(() {
                pharmacy = value;
              });
            },
            textField: 'label',
            valueField: 'value',
          ),
        ),
      ],
    ),
  );


  //list of steps
  int stepperIndex = 0;
  List<Step> getSteps() => [
    Step(
      title: Text('Patient Details'),
      subtitle: Text('Please confirm your details.'),
      content: buildPatient(),
      isActive: stepperIndex >= 0,
    ),

    Step(
      title: Text('Doctor Details'),
      subtitle: Text('Please enter your doctor\'s information.'),
      content: buildDoctor(),
      isActive: stepperIndex >= 1,
    ),

    Step(
      title: Text('Prescription Details'),
      subtitle: Text('Please enter prescription details.'),
      content: buildPrescription(),
      isActive: stepperIndex >= 2,
    ),
  ];




  @override
  Widget build(BuildContext context){
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
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [

                Center(
                  child: Text(
                    'Prescription Request',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 30,),


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
          ),
      ),

      bottomNavigationBar: NavBar(),
    );

  }
}