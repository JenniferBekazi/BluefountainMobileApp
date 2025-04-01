import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/bottomnavigationbar.dart';

class ViewCar extends StatefulWidget{
  final String? imagePath;
  final String? doctorName;
  final String? doctorLocation;
  final String? callTime;



  const ViewCar({
    Key ? key,
    this.imagePath,
    this.doctorName,
    this.callTime,
    this.doctorLocation
  }): super(key : key);


  State<ViewCar> createState() => _ViewCarState();
}

class _ViewCarState extends State<ViewCar>{

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

                              Text(widget.doctorLocation!, style: TextStyle(fontSize: 15),),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        ],
                      ),

                      SizedBox(height: 50,),

                      Text('Description', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

                      SizedBox(height: 10,),

                      Text(
                        '2011 AUDI A1 YEAR MODEL 2.0 gls MANUAL VEHICLE IS IMMACULATE CONDITION, INTERIOR IS NEAT,'
                            'DRIVE WELL, NEW TYRES AIRCON POWERSTEERING, ELECTRIC WINDOWS CENTRAL LOCKING FACTORY RADIO CD,'
                            'ALARM MULTI FUNCTIONAL STEERING FOGS. '
                            ,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(height: 10,),

                      Text(
                        'This vehicle will be certified as roadworthy by the dealer.',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 50,),


              Center(
                child: ElevatedButton.icon(
                  icon: Icon(Icons.chat),
                  label:Text('Send A Message'),
                  onPressed: () => showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      context: context,
                      builder: (BuildContext context){
                        return Padding(
                          padding: EdgeInsets.all(13),
                          child: buildEmailForm(),
                        );
                      }
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.blue,
                    minimumSize: Size(300,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
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