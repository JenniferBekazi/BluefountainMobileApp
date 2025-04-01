import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
import 'package:http/http.dart' as http;

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/bottomnavigationbar.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/listitemsclass.dart';


class ViewComponent extends StatefulWidget {


  final String? firstname;
  final String? lastname;
  final String? department;
  final String? date;
  final String? time;
  final String? doctor;


  ViewComponent({
    Key ? key,
    required this.firstname,
    required this.lastname,
    required this.department,
    required this.date,
    required this.time,
    required this.doctor,
  }) :
        super(key: key);

  State<ViewComponent> createState() => _ViewComponentState();


}

class _ViewComponentState extends State<ViewComponent>{

  //api method
  Future<void>? rescheduleCall() async{
    final url = Uri.parse('http://192.168.8.111:3001/mongo/patient/reschedule');

    //TODO: Once retrieved populate object data with appointment data
    try{
      final response = await http.patch(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "id": "PDB145WE",
          "patient_appointments": {
            "newData": {
              "first_name": "Kanzo",
              "patient_id": "PDB145WE",
              "service_provider": "Hadley Boyd",
              "appointment_id": "0",
              "last_name": "Saunders",
              "date_of_birth": "",
              "phone_number": "+27749779640",
              "email": "shanongamacho@gmail.com",
              "gender": "Female",
              "id": "AP23PF",
              "title": "Select",
              "national_id": "Consequatur Alias c",
              "status": "Pending",
              "street_address": "Temporibus magnam pa",
              "street_address_line2": "Sit molestias sint ",
              "city": "Voluptas laborum odi",
              "state": "Saepe nihil sunt vel",
              "postal_zipcode": "78856",
              "langauge": "Select",
              "diability": "Yes",
              "other_services": "",
              "communication": "No",
              "sensory_processing": "Select",
              "cognitive_disability": "Select",
              "applied_service": "Panashe",
              "department": departmentVariable,
              "procedure": procedureController.text,
              "preferred_appointment_date": appointmentDate.toString(),
              "preferred_appointment_time": appointmentTime.toString(),
              "other_date": "",
              "payment_method": "",
              "amount": "",
              "card_holder": "Provident voluptas ",
              "card_number": "929",
              "expiration_date": "1985-05-30",
              "cvv_cvc_code": "Explicabo Amet nob",
              "billing_address": "Asperiores id eum es",
              "amount_charged": "Ea cupiditate dolore",
              "insurance_company": "",
              "policy_number": "",
              "policy_holder": "",
              "deductable_amount": "",
              "insurance_plan": "",
              "expiry_date": "",
              "insurance_member_number": "",
              "call_centre": "",
              "preferredDoctor": "Sunlight"
            },
            "oldData": {
              "first_name": "Shannon",
              "patient_id": "PDB145WE",
              "service_provider": "Hadley",
              "appointment_id": "0",
              "last_name": "Camacho",
              "date_of_birth": "1992-09-13",
              "phone_number": "+1(424) 964-9708",
              "email": "shanongamacho@gmail.com",
              "gender": "Male",
              "id": "APP6452434",
              "title": "Mr",
              "national_id": "42-2012680Z11",
              "status": "Pending",
              "street_address": "Possimus sint fugi",
              "street_address_line2": " ",
              "city": "Quas dicta est dolor",
              "state": "Tolna",
              "postal_zipcode": "66343",
              "langauge": " ",
              "diability": " ",
              "other_services": "",
              "communication": " ",
              "sensory_processing": " ",
              "cognitive_disability": " ",
              "applied_service": " ",
              "department": "Neurology",
              "procedure": " ",
              "preferred_appointment_date": "2023-07-15",
              "preferred_appointment_time": "15:01",
              "other_date": "",
              "payment_method": "",
              "amount": "",
              "card_holder": " ",
              "card_number": "",
              "expiration_date": "",
              "cvv_cvc_code": "",
              "billing_address": "",
              "amount_charged": "",
              "insurance_company": "",
              "policy_number": "",
              "policy_holder": "",
              "deductable_amount": "",
              "insurance_plan": "",
              "expiry_date": "",
              "insurance_member_number": "",
              "call_centre": "",
              "preferredDoctor": "Hadley"
            }
          },

        }),
      );

      if (response.statusCode == 200) {
        // Data updated successfully
        print('Data updated successfully');
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    }catch(e){
      print(e.toString());
    }
  }


  //reschedule codes

  //controllers
  final procedureController = TextEditingController();

  //variables
  String? departmentVariable;
  String? procedureVariable;
  String? doctorVariable;
  //date and time items
  DateTime appointmentDate = DateTime.now();
  TimeOfDay appointmentTime = TimeOfDay.now();



  Widget _rescheduleForm() => Padding(
    padding: const EdgeInsets.all(13.0),
    child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Department'),
          DropDownField(
            value: departmentVariable,
            hintText: 'Select Department',
            dataSource: ListItems().departmentOptions,
            onChanged: (value){
              setState(() {
                departmentVariable = value;
              });
            },
            textField: 'label',
            valueField: 'value',
          ),

          SizedBox(height: 5,),

          Text('Procedure'),
          TextFormField(
            controller: procedureController,
            decoration: InputDecoration(
              labelText: 'Procedure',
              hintText: 'Procedure',
              suffixIcon: procedureController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => procedureController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              alignLabelWithHint: true,
            ),
            onSaved: (value) => setState(() => procedureVariable = value),
            validator: (value){
              if(value!.isEmpty){
                return 'procedure is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Preferred Date'),
          Column(
            children: <Widget>[
              Text(
                "${appointmentDate.year} - ${appointmentDate.month} - ${appointmentDate.day}",
              ),
              MaterialButton(
                child: Text('Choose Date'),
                color: Colors.blueGrey,
                hoverColor: Colors.lightBlueAccent,
                elevation: 4,
                onPressed: () async{
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: appointmentDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  );

                  if(dateTime != null){
                    setState(() {
                      appointmentDate = dateTime;
                    });
                  }
                },
              ),
            ],
          ),

          SizedBox(height: 5,),

          Text('Preferred Time'),
          Column(
            children: <Widget>[
              Text(
                "${appointmentTime.hour}: ${appointmentTime.minute}",
              ),
              MaterialButton(
                child: Text('Choose Time'),
                color: Colors.blueGrey,
                hoverColor: Colors.lightBlueAccent,
                elevation: 4,
                onPressed: () async{
                  final TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: appointmentTime,
                    initialEntryMode: TimePickerEntryMode.dial,
                  );

                  if(time != null){
                    setState(() {
                      appointmentTime = time;
                    });
                  }
                },
              ),
            ],
          ),

          SizedBox(height: 5,),

          Text('Preferred Doctor'),
          DropDownField(
            value: doctorVariable,
            hintText: 'Select Doctor',
            dataSource: ListItems().doctorOptions,
            onChanged: (value){
              setState(() {
                doctorVariable = value;
              });
            },
            textField: 'label',
            valueField: 'value',
          ),

          SizedBox(height: 5,),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.redAccent,
                  ),
                  child: Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.green,
                    ),
                    child: Text('Okay'),
                    onPressed: () {
                      rescheduleCall();
                      Navigator.pop(context);
                    }
                ),
              ]
          ),

        ],
      ),
    ),
  );

  //bottom modal sheet
  void _modalSheet(context) => showModalBottomSheet(
    context: context,
    builder: (BuildContext context){
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: _rescheduleForm()
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Appointment Details',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Center(
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Container(
                        width: 350,
                        height: 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                              side: BorderSide(
                                  width: 2.0,
                                  color: Colors.black54
                              )
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(child: Text(widget.firstname!, style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                      ),



                      Container(
                        width: 350,
                        height: 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                              side: BorderSide(
                                  width: 2.0,
                                  color: Colors.black54
                              )
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(child: Text(widget.lastname!, style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                      ),




                      Container(
                        width: 350,
                        height: 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                              side: BorderSide(
                                  width: 2.0,
                                  color: Colors.black54
                              )
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(child: Text(widget.department!, style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                      ),




                      Container(
                        width: 350,
                        height: 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                              side: BorderSide(
                                  width: 2.0,
                                  color: Colors.black54
                              )
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(child: Text(widget.date!, style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                      ),




                      Container(
                        width: 350,
                        height: 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                              side: BorderSide(
                                  width: 2.0,
                                  color: Colors.black54
                              )
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(child: Text(widget.time!, style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                      ),



                      Container(
                        width: 350,
                        height: 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                              side: BorderSide(
                                  width: 2.0,
                                  color: Colors.black54
                              )
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(child: Text(widget.doctor!, style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),


              SizedBox(height: 150,),



              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.blue,
                        minimumSize: Size(327, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        )
                    ),
                    onPressed: () => _modalSheet(context),
                    child: Text('Reschedule'),
                  ),

                  SizedBox(height: 10,),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.redAccent,
                        minimumSize: Size(327, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        )
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text('Cancel'),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }

}