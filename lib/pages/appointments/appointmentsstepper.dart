import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
import 'package:intl/intl.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:http/http.dart' as http;

import '../profile.dart';
import '../components/drawercomponent.dart';
import '../components/successdialog.dart';
import 'components/failuredialog.dart';
import '../components/bottomnavigationbar.dart';
import '../components/listitemsclass.dart';
import '../../services/appointments/emailservice.dart';
import 'appointmentsmenu.dart';
import '../../services/patient/patientservice.dart';
import '../../models/patientmodel.dart';
import 'package:random_string/random_string.dart';




class AppointmentsStepper extends StatefulWidget {
  const AppointmentsStepper({Key? key}) : super(key: key);

  State<AppointmentsStepper> createState() => _AppointmentsStepperState();
}

class _AppointmentsStepperState extends State<AppointmentsStepper> {
  //api data
  Map<String, dynamic>? _appointmentsObject;
  bool bookingSuccess = false;

  //post api method
  //TODO: Fix the object to populate all the data and send to mongo

  Future<void>? bookAppointment(String addressController,String first_NameController, String last_NameController,
      String national_idController, String zipCodeController, String preferredDoctor, String department,
      String appointmentDate, String appointmentTime) async {
    final url = Uri.parse('http://20.164.214.226:3060/mongo/bookings/create');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "streetAddress1": addressController,
          "selectedCountryCode": zipCodeController,
          "first_name": first_NameController,
          "last_name": last_NameController,
          "national_id": national_idController,
          "preferred_appointment_date": appointmentDate.toString(),
          "preferred_appointment_time": appointmentTime.toString(),
          "email": 'mabuzajennifer@yahoo.com',
          "doctorName": preferredDoctor,

          "language": language.toString(),
          "doctorId": doctorIdController.text,
          "disability": disabilityController.text,
          "other_services": 'llllll',
          "status": "Pending",
          "gender": 'female',
          "city": 'Johannesburg',
          "country": 'South Africa',
          "state": 'Maboneng',
          "phone_number": phone_numberController.text,
          "patient_Id": patient_IdController.text,
          "department": department,
          "translator": translator,
          //"communication": communication,
          "sensory": sensory,
          "cognitive": cognitive,
          "procedure": procedure,
          "id" : id,
          "zip_code": zipCodeController,
        }),
      );

      if (response.statusCode == 201) {
        print('Data updated successfully');
        setState(() {
          bookingSuccess = true;
        });
      } else {
        print('failed to update');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  var patientId = '645a2297b9959e8d9ad4d959';

  //success dialog
  void _showSuccessDialog(context) => showDialog(
        context: context,
        builder: (context) => SuccessDialog(toClass: AppointmentsMenu()),
      );

  //failure dialog
  void _showFailureDialog(context) => showDialog(
        context: context,
        builder: (context) => FailureDialog(),
      );

  //payment components
  //controllers
  final creditcardnameController = TextEditingController();
  final creditcardnumberController = TextEditingController();
  final creditcardcvcController = TextEditingController();
  final creditcardaddressController = TextEditingController();
  final creditcardamountController = TextEditingController();
  final medicalaidcompanyController = TextEditingController();
  final medicalpolicyholderController = TextEditingController();
  final medicalpolicynumberController = TextEditingController();
  final medicalmembernumberController = TextEditingController();
  final medicalinsuranceplanController = TextEditingController();
  final medicalaidamountController = TextEditingController();

  //variables
  double? cashcomponentAmount;
  String? creditcardname;
  String? creditcardnumber;
  String? creditcardcvc;
  DateTime creditcardexpirydate = DateTime.now();
  String? creditcardaddress;
  String? creditcardamount;
  String? medicalaidinsurancecompany;
  String? medicalaidpolicyholder;
  String? medicalaidpolicynumber;
  String? medicalaidinsuranceplan;
  DateTime medicalaidexpirydate = DateTime.now();
  String? medicalaidinsurancemembernumber;
  String? medicalaidamount;
  double cashcomponentamount = 0;
  String? language = 'English';
  String id = randomAlphaNumeric(4);


  //TODO: Fix that name thing

  //controllers
  final _dateFormat = DateFormat('yyyy/MM/dd');
  final first_NameController = TextEditingController();
  final last_NameController = TextEditingController();
  final national_idController = TextEditingController();
  final addressController = TextEditingController();
  final zipCodeController = TextEditingController();
  final procedureController = TextEditingController();
  final symptomsController = TextEditingController();
  final disabilityController = TextEditingController();
  final patient_IdController = TextEditingController();
  final phone_numberController = TextEditingController();
  final doctorIdController = TextEditingController();

  //radio buttons value
  int genderRadio = 1;
  int optionRadio0 = 1;
  int optionRadio1 = 1;
  int optionRadio2 = 1;
  int optionRadio3 = 1;
  int optionRadio4 = 1;
  int optionRadio5 = 1;

  //date items
  DateTime appointmentDate = DateTime.now();
  TimeOfDay appointmentTime = TimeOfDay.now();

  //variables
  String? first_Name;
  String? last_Name;
  String? national_id;
  String? gender;
  String? streetAddress;
  String? country;
  String? city;
  String? state;
  String? zipCode;
  String? appliedBefore;
  String? preferredDoctor;
  String? department;
  String? translator;
  String? accomodation;
  String? communication;
  String? sensory;
  String? cognitive;
  String? procedure;

  //boolean values for switches
  bool cash = false;
  bool credit = false;
  bool medical = false;
  bool paymentplan = false;

  //form selector lists

  //widget build methods
  //personal details component
  Widget _buildPersonalDetails() => Column(
        children: <Widget>[
          Text('First Name'),
          SizedBox(
            width: 320,
            child: TextFormField(
              controller: first_NameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'First Name',
                suffixIcon: first_NameController.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => first_NameController.clear(),
                      ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onSaved: (value) => setState(() => first_Name = value),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'firstName required';
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(
            height: 7,
          ),
          SizedBox(
            width: 320,
            child: TextFormField(
              controller: last_NameController,
              decoration: InputDecoration(
                hintText: 'Last Name',
                suffixIcon: last_NameController.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => last_NameController.clear(),
                      ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onSaved: (value) => setState(() => last_Name = value),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'lastName required';
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text('Id Number'),
          SizedBox(
            width: 320,
            child: TextFormField(
              controller: national_idController,
              decoration: InputDecoration(
                suffixIcon: national_idController.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => national_idController.clear(),
                      ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onSaved: (value) => setState(() => national_id = value),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'idNumber required';
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text('Gender'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Female'),
                leading: Radio(
                  value: 1,
                  groupValue: genderRadio,
                  onChanged: (value) {
                    setState(() {
                      genderRadio = value!;
                      appliedBefore = 'Yes';
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Male'),
                leading: Radio(
                  value: 2,
                  groupValue: genderRadio,
                  onChanged: (value) {
                    setState(() {
                      genderRadio = value!;
                      appliedBefore = 'No';
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      );

  //address details component
  Widget _buildAddressDetails() => Column(
        children: <Widget>[
          TextFormField(
            controller: addressController,
            decoration: InputDecoration(
              labelText: 'Street Address',
              hintText: 'Street Address',
              suffixIcon: addressController.text.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => addressController.clear(),
                    ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => streetAddress = value),
            validator: (value) {
              if (value!.isEmpty) {
                return 'address required';
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: CSCPicker(
              layout: Layout.vertical,
              cityDropdownLabel: "City",
              stateDropdownLabel: "State",
              dropdownDialogRadius: 33,
              searchBarRadius: 33,
              dropdownDecoration: BoxDecoration(
                border: null,
              ),
              onCountryChanged: (country) {
                setState(() {
                  country = country;
                });
              },
              onStateChanged: (state) {
                setState(() {
                  state = state;
                });
              },
              onCityChanged: (city) {
                setState(() {
                  city = city;
                });
              },
            ),
          ),
          SizedBox(
            height: 7,
          ),
          TextFormField(
            controller: zipCodeController,
            decoration: InputDecoration(
              labelText: 'Zip Code',
              hintText: 'Zip Code',
              suffixIcon: zipCodeController.text.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => zipCodeController.clear(),
                    ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => zipCode = value),
            validator: (value) {
              if (value!.isEmpty) {
                return 'zipcode required';
              } else {
                return null;
              }
            },
          ),
        ],
      );

  //booking questions component
  Widget _buildBookingQuestions() => Column(
        children: <Widget>[
          Text('Have you ever applied to our facility before?'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Yes'),
                leading: Radio(
                  value: 1,
                  groupValue: optionRadio0,
                  onChanged: (value) {
                    setState(() {
                      optionRadio0 = value!;
                      appliedBefore = 'Yes';
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('No'),
                leading: Radio(
                  value: 2,
                  groupValue: optionRadio0,
                  onChanged: (value) {
                    setState(() {
                      optionRadio0 = value!;
                      appliedBefore = 'No';
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('Procedure'),
  DropDownField(
  value: procedure,
  hintText: 'Select Procedure',
  dataSource: ListItems().procedureItems,
  onChanged: (value) {
  setState(() {
  procedure = value;
  });
  },
  textField: 'label',
  valueField: 'value',
  ),

          Text('Preferred Doctor'),
          DropDownField(
            value: preferredDoctor,
            hintText: 'Select Doctor',
            dataSource: ListItems().doctorOptions,
            onChanged: (value) {
              setState(() {
                preferredDoctor = value;
              });
            },
            textField: 'label',
            valueField: 'value',
          ),
          SizedBox(
            height: 10,
          ),
          Text('Which department would you like to get an appointment from?'),
          DropDownField(
            value: department,
            hintText: 'Select Department',
            dataSource: ListItems().departmentOptions,
            onChanged: (value) {
              setState(() {
                department = value;
              });
            },
            textField: 'label',
            valueField: 'value',
          ),
        ],
      );

  //payments component

  //date and time component
  Widget _buildPrefferedDateAndTime() => Column(
        children: <Widget>[
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
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: appointmentDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  );

                  if (dateTime != null) {
                    setState(() {
                      appointmentDate = dateTime;
                    });
                  }
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
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
                onPressed: () async {
                  final TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: appointmentTime,
                    initialEntryMode: TimePickerEntryMode.dial,
                  );

                  if (time != null) {
                    setState(() {
                      appointmentTime = time;
                    });
                  }
                },
              ),
            ],
          ),
        ],
      );

  //special needs component
  Widget _buildSpecialNeeds() => Column(
        children: <Widget>[
          Text('Do you need a langauge translator?'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Yes'),
                leading: Radio(
                  value: 1,
                  groupValue: optionRadio1,
                  onChanged: (value) {
                    setState(() {
                      optionRadio1 = value!;
                      translator = 'Yes';
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('No'),
                leading: Radio(
                  value: 2,
                  groupValue: optionRadio1,
                  onChanged: (value) {
                    setState(() {
                      optionRadio1 = value!;
                      translator = 'No';
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text('Do you need any accommodation for disability?'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Yes'),
                leading: Radio(
                  value: 1,
                  groupValue: optionRadio2,
                  onChanged: (value) {
                    setState(() {
                      optionRadio2 = value!;
                      accomodation = 'Yes';
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('No'),
                leading: Radio(
                  value: 2,
                  groupValue: optionRadio2,
                  onChanged: (value) {
                    setState(() {
                      optionRadio2 = value!;
                      accomodation = 'No';
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text('Do you need communication assistance?'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Yes'),
                leading: Radio(
                  value: 1,
                  groupValue: optionRadio3,
                  onChanged: (value) {
                    setState(() {
                      optionRadio3 = value!;
                      communication = 'Yes';
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('No'),
                leading: Radio(
                  value: 2,
                  groupValue: optionRadio3,
                  onChanged: (value) {
                    setState(() {
                      optionRadio3 = value!;
                      communication = 'No';
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text('Do you have any sensory processing issues?'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Yes'),
                leading: Radio(
                  value: 1,
                  groupValue: optionRadio4,
                  onChanged: (value) {
                    setState(() {
                      optionRadio4 = value!;
                      sensory = 'Yes';
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('No'),
                leading: Radio(
                  value: 2,
                  groupValue: optionRadio4,
                  onChanged: (value) {
                    setState(() {
                      optionRadio4 = value!;
                      sensory = 'No';
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text('Do you have any cognitive disability?'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Yes'),
                leading: Radio(
                  value: 1,
                  groupValue: optionRadio5,
                  onChanged: (value) {
                    setState(() {
                      optionRadio5 = value!;
                      cognitive = 'Yes';
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('No'),
                leading: Radio(
                  value: 2,
                  groupValue: optionRadio5,
                  onChanged: (value) {
                    setState(() {
                      optionRadio5 = value!;
                      cognitive = 'No';
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 800,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
            ),
            child: TextFormField(
              controller: symptomsController,
              maxLines: 7,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black38, width: 1.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                alignLabelWithHint: true,
                label: Text('Optional: describe your symptoms '),
                hintText: 'Optional: describe your symptoms',
              ),
            ),
          ),
        ],
      );

  //list of steps
  int stepperIndex = 0;
  List<Step> getSteps() => [
        Step(
          title: Text('Personal Details'),
          subtitle: Text('Please enter personal details.'),
          content: _buildPersonalDetails(),
          isActive: stepperIndex >= 0,
        ),
        Step(
          title: Text('Address Details'),
          subtitle: Text('Please enter address details.'),
          content: _buildAddressDetails(),
          isActive: stepperIndex >= 1,
        ),
        Step(
          title: Text('Booking Questions'),
          subtitle: Text('Please answer these booking questions.'),
          content: _buildBookingQuestions(),
          isActive: stepperIndex >= 2,
        ),
        Step(
          title: Text('Date And Time'),
          subtitle: Text('Please provide preferred date and time.'),
          content: _buildPrefferedDateAndTime(),
          isActive: stepperIndex >= 4,
        ),
        Step(
          title: Text('Special Needs'),
          subtitle:
              Text('Please answer the following special needs questions.'),
          content: _buildSpecialNeeds(),
          isActive: stepperIndex >= 5,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Book Appointment'),
        automaticallyImplyLeading: false,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu_sharp,
                color: Colors.white,
              ));
        }),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Profile())),
            icon: Icon(Icons.person),
          ),
        ],
      ),
      drawer: DrawerClass(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Center(
                
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Stepper(
                  physics: ClampingScrollPhysics(),
                  currentStep: stepperIndex,
                  onStepCancel: () {
                    if (stepperIndex > 0) {
                      setState(() {
                        stepperIndex -= 1;
                      });
                    }
                  },
                  onStepContinue: () {
                    final isLastStep = stepperIndex == getSteps().length - 1;

                    if (isLastStep) {
                      //TODO:add functionality to only send email on booking success and success dialogs as well and change email to firebase user email
                      bookAppointment( addressController.text, first_NameController.text,  last_NameController.text,
                           national_idController.text,  zipCodeController.text, preferredDoctor.toString(),  department.toString(),
                           appointmentDate.toString(),  appointmentTime.toString());
                      EmailService().sendEmail(
                          'mabuzajennifer@yahoo.com',
                          '645a23a9b9959e8d9ad4d95d',
                          appliedBefore.toString(),
                          department.toString(),
                          procedureController.text,
                          appointmentDate.toString(),
                          appointmentTime.toString(),
                          preferredDoctor);

                      if(bookingSuccess == true){
                        _showSuccessDialog(context);
                      }else if (bookingSuccess == false){
                        _showFailureDialog(context);
                      }
                      _showSuccessDialog(context);
                    } else {
                      setState(() {
                        stepperIndex += 1;
                      });
                    }
                  },
                  controlsBuilder:
                      (BuildContext context, ControlsDetails details) {
                    final isLastStep = stepperIndex == getSteps().length - 1;

                    return Container(
                      child: Row(
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
                          SizedBox(
                            width: 16,
                          ),
                          if (details.currentStep != 0)
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
                  onStepTapped: (int index) {
                    setState(() {
                      stepperIndex = index;
                    });
                  },
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
