import 'dart:convert';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/components/failuredialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
import 'package:intl/intl.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:http/http.dart' as http;

import '../profile.dart';
import '../components/drawercomponent.dart';
import '../components/successdialog.dart';
import '../components/bottomnavigationbar.dart';
import '../components/listitemsclass.dart';
import '../../services/appointments/emailservice.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/appointments/appointmentsmenu.dart';

class BookSaloon extends StatefulWidget{
  const BookSaloon({Key ? key}): super(key : key);

  State<BookSaloon> createState() => _BookSaloonState();
}

class _BookSaloonState extends State<BookSaloon>{
  //api data
  Map<String, dynamic>? _appointmentsObject;
  bool bookingSuccess = false;


  //post api method
  //TODO: Fix the object to populate all the data and send to mongo

  Future<void>? bookAppointment() async{
    final url = Uri.parse('http://192.168.8.112:3001/mongo/patient/patient_appointments/645a23a9b9959e8d9ad4d95d');

    try{
      final response =  await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(
            {
              "phone_number": "0773368966",
              "patient_id":"645a23a9b9959e8d9ad4d95d",
              "first_name": firstNameController.text,
              "last_name": lastNameController.text,
              "date_of_birth": "2001-07-23",
              "gender": gender,
              "title": "Mr",
              "national_id": idNumberController.text,
              "preferredDoctor": preferredDoctor,
              "status": "Pending",
              "service_provider": "",

              "visited_us": appliedBefore,
              "street_address": addressController.text,
              "street_address_line2": "",
              "city": city,
              "state": state,
              "postal_zipcode": zipCodeController.text,

              "langauge": translator,
              "diability": accomodation,
              "other_services": "",
              "communication":  communication,
              "sensory_processing": sensory,
              "cognitive_disability": cognitive,

              "service": "",
              "applied_service": appliedBefore,
              "department": department,
              "procedure": procedureController.text,
              "preferred_appointment_date": appointmentDate.toString() ,
              "preferred_appointment_time": appointmentTime.toString(),
              "other_date": "",

              "payment_method": "",

              "amount": cashcomponentAmount,

              "card_holder": creditcardnameController.text,
              "card_number": creditcardnumberController.text,
              "expiration_date": creditcardexpirydate.toString(),
              "cvv_cvc_code": creditcardcvcController.text,
              "billing_address": creditcardaddressController.text,
              "amount_charged": creditcardamountController.text,

              "insurance_company": medicalaidcompanyController.text,
              "policy_number": medicalpolicynumberController.text,
              "policy_holder": medicalpolicyholderController.text,
              "deductable_amount": medicalaidamountController.text,
              "insurance_plan": medicalinsuranceplanController.text,
              "expiry_date": medicalaidexpirydate.toString(),
              "insurance_member_number": medicalmembernumberController.text,
              "call_centre": "",
              "id": "645a23a9b9959e8d9ad4d95d",

            }
        ),
      );

      if(response.statusCode == 200){
        print('Data updated successfully');
        setState(() {
          bookingSuccess = true;
        });
      }else{
        print('failed to update');
      }

    }catch(e){
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


  //components
  //CREDIT CARD COMPONENT
  Widget _buildCreditCard() => Padding(
    padding: const EdgeInsets.all(15.0),
    child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Card Holder\'s name'),
          TextFormField(
            controller: creditcardnameController,
            decoration: InputDecoration(
              labelText: 'Holder Name',
              hintText: 'Holder Name',
              suffixIcon: creditcardnameController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => creditcardnameController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => creditcardname = value),
            validator: (value){
              if(value!.isEmpty){
                return 'name is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Card Number'),
          TextFormField(
            controller: creditcardnumberController,
            decoration: InputDecoration(
              labelText: 'Card Number',
              hintText: 'Card Number',
              suffixIcon: creditcardnumberController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => creditcardnumberController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => creditcardnumber = value),
            validator: (value){
              if(value!.isEmpty){
                return 'number is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),


          Text('CVV/CVC Number'),
          TextFormField(
            controller: creditcardcvcController,
            decoration: InputDecoration(
              labelText: 'CVV/CVC Number',
              hintText: 'CVV/CVC Number',
              suffixIcon: creditcardcvcController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => creditcardcvcController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => creditcardcvc = value),
            validator: (value){
              if(value!.isEmpty){
                return 'cvc is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Valid Until'),
          Column(
            children: <Widget>[
              Text(
                "${creditcardexpirydate.year} - ${creditcardexpirydate.month} - ${creditcardexpirydate.day}",
              ),
              MaterialButton(
                color: Colors.blueGrey,
                hoverColor: Colors.lightBlueAccent,
                elevation: 4,
                child: Text('Choose Date'),
                onPressed: () async{
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: creditcardexpirydate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  );

                  if(dateTime != null){
                    setState(() {
                      creditcardexpirydate = dateTime;
                    });
                  }
                },
              ),
            ],
          ),

          SizedBox(height: 5,),

          Text('Billing Address'),
          TextFormField(
            controller: creditcardaddressController,
            decoration: InputDecoration(
              labelText: 'Billing Address',
              hintText: 'Billing Address',
              suffixIcon: creditcardaddressController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => creditcardaddressController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => creditcardaddress = value),
            validator: (value){
              if(value!.isEmpty){
                return 'address is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Amount To Be Charged'),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: creditcardamountController,
            decoration: InputDecoration(
              labelText: 'Amount',
              hintText: 'Amount',
              suffixIcon: creditcardamountController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => creditcardamountController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => creditcardamount = value),
            validator: (value){
              if(value!.isEmpty){
                return 'amount is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 13,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.cancel_outlined, size: 15,),
                label: Text('Cancel'),
              ),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.check_box_outlined,size: 15,),
                label: Text('Done'),
              ),
            ],
          ),
        ],
      ),
    ),
  );


  //MEDICAL AID COMPONENT
  Widget _buildMedicalAid() => Padding(
    padding: const EdgeInsets.all(15.0),
    child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Text('Insurance Company Name'),
          TextFormField(
            controller: medicalaidcompanyController,
            decoration: InputDecoration(
              labelText: 'Insurance Company',
              hintText: 'Insurance Company',
              suffixIcon: medicalaidcompanyController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => medicalaidcompanyController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => medicalaidinsurancecompany = value),
            validator: (value){
              if(value!.isEmpty){
                return 'company is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Policy Holder'),
          TextFormField(
            controller: medicalpolicyholderController,
            decoration: InputDecoration(
              labelText: 'Policy Holder',
              hintText: 'Policy Holder',
              suffixIcon: medicalpolicyholderController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => medicalpolicyholderController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => medicalaidpolicyholder = value),
            validator: (value){
              if(value!.isEmpty){
                return 'policy holder is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Policy Number'),
          TextFormField(
            controller: medicalpolicynumberController,
            decoration: InputDecoration(
              labelText: 'Policy Number',
              hintText: 'Policy Number',
              suffixIcon: medicalpolicynumberController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => medicalpolicynumberController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => medicalaidpolicynumber = value),
            validator: (value){
              if(value!.isEmpty){
                return 'policy number is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Insurance Plan'),
          TextFormField(
            controller: medicalinsuranceplanController,
            decoration: InputDecoration(
              labelText: 'Insurance Plan',
              hintText: 'Insurance Plan',
              suffixIcon: medicalinsuranceplanController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => medicalinsuranceplanController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => medicalaidinsuranceplan = value),
            validator: (value){
              if(value!.isEmpty){
                return 'plan is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text("Expiry Date"),
          Column(
            children: <Widget>[
              Text(
                "${medicalaidexpirydate.year} - ${medicalaidexpirydate.month} - ${medicalaidexpirydate.day}",
              ),
              MaterialButton(
                color: Colors.blueGrey,
                hoverColor: Colors.lightBlueAccent,
                elevation: 4,
                child: Text('Choose Date'),
                onPressed: () async{
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: medicalaidexpirydate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  );

                  if(dateTime != null){
                    setState(() {
                      medicalaidexpirydate = dateTime;
                    });
                  }
                },
              ),
            ],
          ),

          SizedBox(height: 5,),

          Text('Insurance Member Number'),
          TextFormField(
            controller: medicalmembernumberController,
            decoration: InputDecoration(
              labelText: 'Member Number',
              hintText: 'Member Number',
              suffixIcon: medicalmembernumberController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => medicalmembernumberController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => medicalaidinsurancemembernumber = value),
            validator: (value){
              if(value!.isEmpty){
                return 'member number is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 5,),

          Text('Deductable Amount'),
          TextFormField(
            controller: medicalaidamountController,
            decoration: InputDecoration(
              labelText: 'Deductable Amount',
              hintText: 'Deductable AMount',
              suffixIcon: medicalaidamountController.text.isEmpty
                  ? Container(width:0)
                  : IconButton(
                icon:Icon(Icons.close),
                onPressed: () => medicalaidamountController.clear(),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onSaved: (value) => setState(() => medicalaidamount = value),
            validator: (value){
              if(value!.isEmpty){
                return 'amount is required';
              }else{
                return null;
              }
            },
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.cancel_outlined, size: 15,),
                label: Text('Cancel'),
              ),

              ElevatedButton.icon(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.check_box_outlined,size: 15,),
                label: Text('Done'),
              ),
            ],
          ),

        ],
      ),
    ),
  );

  //CASH COMPONENT
  Widget _buildCashComponent() => Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Center(
            child: Text(
              'Please enter amount to be paid.',
            ),
          ),

          SizedBox(height: 20,),

          Slider(
            value: cashcomponentamount,
            max: 10000,
            divisions: 5,
            label: cashcomponentamount.round().toString(),
            onChanged: (double value){
              setState(() {
                cashcomponentamount = value;
              });
            },
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.cancel_outlined, size: 15,),
                label: Text('Cancel'),
              ),

              ElevatedButton.icon(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.check_box_outlined,size: 15,),
                label: Text('Done'),
              ),
            ],
          ),


        ],
      )
  );



  //TODO: Fix that name thing

  //controllers
  final _dateFormat = DateFormat('yyyy/MM/dd');
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final idNumberController = TextEditingController();
  final addressController = TextEditingController();
  final zipCodeController = TextEditingController();
  final procedureController = TextEditingController();

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
  String? firstName;
  String? lastName;
  String? idNumber;
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
      Container(
        width: 350,
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                  width: 2.0,
                  color: Colors.black54
              )
          ),
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text(
              //patientDetails!.identityDetails.identificationType,
                ''
            )),
          ),
        ),
      ),

      SizedBox(height: 7,),
      Container(
        width: 350,
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                  width: 2.0,
                  color: Colors.black54
              )
          ),
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text(
              //patientDetails!.identityDetails.identificationType,
              '',
            )),
          ),
        ),
      ),



      SizedBox(height: 7,),

      Text('Id Number'),
      Container(
        width: 350,
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                  width: 2.0,
                  color: Colors.black54
              )
          ),
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text(
              //patientDetails!.identityDetails.identificationType,
              '',
            )),
          ),
        ),
      ),

      SizedBox(height: 7,),

      Text('Gender'),
      Container(
        width: 350,
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                  width: 2.0,
                  color: Colors.black54
              )
          ),
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text(
              //patientDetails!.identityDetails.identificationType,
              'Male',
              style: TextStyle(color: Colors.black),)),
          ),
        ),
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
              ? Container(width:0)
              : IconButton(
            icon:Icon(Icons.close),
            onPressed: () => addressController.clear(),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10),
        ),
        onSaved: (value) => setState(() => streetAddress = value),
        validator: (value){
          if(value!.isEmpty){
            return 'address required';
          }else{
            return null;
          }
        },
      ),

      SizedBox(height: 7,),

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

          onCountryChanged: (country){
            setState(() {
              country = country;
            });
          },


          onStateChanged: (state){
            setState(() {
              state = state;
            });
          },

          onCityChanged: (city){
            setState(() {
              city = city;
            });
          },
        ),
      ),

      SizedBox(height: 7,),

      TextFormField(
        controller: zipCodeController,
        decoration: InputDecoration(
          labelText: 'Zip Code',
          hintText: 'Zip Code',
          suffixIcon: zipCodeController.text.isEmpty
              ? Container(width:0)
              : IconButton(
            icon:Icon(Icons.close),
            onPressed: () => zipCodeController.clear(),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10),
        ),
        onSaved: (value) => setState(() => zipCode = value),
        validator: (value){
          if(value!.isEmpty){
            return 'zipcode required';
          }else{
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

      SizedBox(height: 10,),

      Text('Procedure'),
      SizedBox(
        width: 320,
        child: TextFormField(
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
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onSaved: (value) => setState(() => procedure = value),
          validator: (value){
            if(value!.isEmpty){
              return 'procedure required';
            }else{
              return null;
            }
          },
        ),
      ),

      Text('Preferred Lawyer'),
      DropDownField(
        value: preferredDoctor,
        hintText: 'Select Lawyer',
        dataSource: ListItems().doctorOptions,
        onChanged: (value){
          setState(() {
            preferredDoctor = value;
          });
        },
        textField: 'label',
        valueField: 'value',
      ),

      SizedBox(height: 10,),

      Text('Which department would you like to get an appointment from?'),
      DropDownField(
        value: department,
        hintText: 'Select Department',
        dataSource: ListItems().departmentOptions,
        onChanged: (value){
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
  Widget _buildPaymentDetails() => Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Cash or Cheque',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          Switch(
            value: cash,
            activeColor: Colors.blue,
            onChanged: (bool value){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: _buildCashComponent(),
                      ),
                    );
                  }
              );
              setState(() {
                cash = value;
              });
            },
          ),
        ],
      ),

      SizedBox(height: 5,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Debit or Credit Card',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          Switch(
            value: credit,
            activeColor: Colors.blue,
            onChanged: (bool value){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        child: _buildCreditCard(),
                      ),
                    );
                  }
              );
              setState(() {
                credit = value;
              });
            },
          ),
        ],
      ),

      SizedBox(height: 5,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Medical Aid',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          Switch(
            value: medical,
            activeColor: Colors.blue,
            onChanged: (bool value){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        child: _buildMedicalAid(),
                      ),
                    );
                  }
              );
              setState(() {
                medical = value;
              });
            },
          ),
        ],
      ),

      SizedBox(height: 5,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Payment Plan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          Switch(
            value: paymentplan,
            activeColor: Colors.blue,
            onChanged: (bool value){
              setState(() {
                paymentplan = value;
              });
            },
          ),
        ],
      ),
    ],
  );

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
            leading:  Radio(
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
            leading:  Radio(
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

      SizedBox(height: 5,),

      Text('Do you need any accommodation for disability?'),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Yes'),
            leading:  Radio(
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

      SizedBox(height: 5,),

      Text('Do you need communication assistance?'),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Yes'),
            leading:Radio(
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
            leading:  Radio(
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

      SizedBox(height: 5,),

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

      SizedBox(height: 5,),

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
      )
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

    // Step(
    //   title: Text('Payment Details'),
    //   subtitle: Text('Please provide payment details.'),
    //   content: _buildPaymentDetails(),
    //   isActive: stepperIndex >= 3,
    // ),

    Step(
      title: Text('Date And Time'),
      subtitle: Text('Please provide preferred date and time.'),
      content: _buildPrefferedDateAndTime(),
      isActive: stepperIndex >= 4,
    ),

    // Step(
    //   title: Text('Special Needs'),
    //   subtitle: Text('Please answer the following special needs questions.'),
    //   content: _buildSpecialNeeds(),
    //   isActive: stepperIndex >= 5,
    // ),

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Book Appointment'),
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
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Book An Appointment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),

              SizedBox(height: 30,),

              SingleChildScrollView(
                child: Stepper(
                  physics: ClampingScrollPhysics(),
                  currentStep: stepperIndex,
                  onStepCancel: (){
                    if (stepperIndex > 0){
                      setState(() {stepperIndex -= 1; });
                    }
                  },

                  onStepContinue: (){
                    final isLastStep = stepperIndex == getSteps().length - 1;

                    if (isLastStep){

                      //TODO:add functionality to only send email on booking success and success dialogs as well and change email to firebase user email
                      bookAppointment();
                      EmailService().sendEmail(
                          'brianmashavakure@gmail.com',
                          '645a23a9b9959e8d9ad4d95d',
                          appliedBefore.toString(),
                          department.toString(),
                          procedureController.text,
                          appointmentDate.toString(),
                          appointmentTime.toString(),
                          preferredDoctor
                      );


                      // if(bookingSuccess == true){
                      //   _showSuccessDialog(context);
                      // }else if (bookingSuccess == false){
                      //   _showFailureDialog(context);
                      // }
                      _showSuccessDialog(context);

                    }else{
                      setState(() {stepperIndex += 1;});

                    }
                  },

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

