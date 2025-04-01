import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/bottomnavigationbar.dart';

class ViewBurial extends StatefulWidget{
  final String? imagePath;
  final String? doctorName;
  final String? doctorLocation;
  final String? callTime;



  const ViewBurial({
    Key ? key,
    this.imagePath,
    this.doctorName,
    this.callTime,
    this.doctorLocation
  }): super(key : key);


  State<ViewBurial> createState() => _ViewBurialState();
}

class _ViewBurialState extends State<ViewBurial>{

  //send email function
  //replace recipient with doctor's email
  sendEmail(String subject, String body, String recipient) async{
    try{
      final Email email = Email(
        body: body,
        subject: subject,
        recipients: [recipient],
        isHTML: false,
      );

      await FlutterEmailSender.send(email);
    }catch (e){
      print(e.toString());
    }

  }

  final subjectController =  TextEditingController();
  final messageController = TextEditingController();

  Widget buildEmailForm() => SingleChildScrollView(
    physics: AlwaysScrollableScrollPhysics(),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Center(
          child: Text('Send Message',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
        ),

        SizedBox(height: 10,),

        Text('Subject'),
        TextFormField(
          controller: subjectController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            hintText: 'subject',
            alignLabelWithHint: true,
            label: Text('subject'),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),

          ),
        ),

        SizedBox(height: 5,),

        Text('Message'),
        TextFormField(
          controller: messageController,
          maxLines: 9,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            hintText: 'Type your message here.....',
            alignLabelWithHint: true,
            label: Text('message'),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),

          ),
        ),

        SizedBox(height: 10,),

        ElevatedButton(
          child: Text('Send'),
          onPressed: () => sendEmail(subjectController.text, messageController.text, 'tafadzwa.xxiii@gmail.com'),
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.blue,
              minimumSize: Size(250, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )
          ),
        ),
      ],
    ),
  );


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      //Picture Of Doctor
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          widget.imagePath!,
                          width: 95,
                          height: 95,
                        ),
                      ),

                      SizedBox(width: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Doctor Name
                          Text(
                            widget.doctorName!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                          SizedBox(height: 12,),

                          //doctor's location
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [

                              SizedBox(width: 9,),

                              Text(widget.doctorName!, style: TextStyle(fontSize: 15),),
                            ],
                          ),

                          SizedBox(height: 13,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [

                              SizedBox(width: 9,),

                              Text(widget.callTime!, style: TextStyle(fontSize: 15)),
                            ],
                          ),

                          SizedBox(height: 10,),

                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25,),

              //rest of the details
              //qualifications
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [



                      SizedBox(height: 50,),

                      Text('About Us', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,  color: Colors.black,) , ),

                      ],
                      ),
                      SizedBox(height: 10,),

                      Text(
                        'Through our decates of services. Kings Burial Parlour have shared many experience with thousands of families as we helped them say meaningful goodbye. With each service, we'
                            'we have contributed to learn and garner experience to help better serve families. No matter your families background, we are proud to be a provider for funerals of all faith.'

                            'We offer the highest quality services to families of all faiths, cultures and background'
                            ,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(height: 25,),


                    ],
                  ),
                ),
              ),
                SizedBox(height: 20,),


    Material(
    elevation: 2,
    borderRadius: BorderRadius.circular(12),
    child: Container(
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Packages offered',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.yellow,
                      backgroundColor: Colors.white54,
                    ),
                  ),
                ],
              ),
              ],
    ),
    ),
    ),


              SizedBox(height: 50,),


              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Caskets', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                  Image.asset(
                    'icons/casket.jpg',
                    width: 100,
                    height: 95,
                  ),],

              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: NavBar(),


    );
  }
}