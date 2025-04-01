import 'package:flutter/material.dart';
import 'components/bottomnavigationbar.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Feedback Example'),
        ),
        body: FeedbackScreen(),
      ),
    );
  }
}

class FeedbackScreen extends StatefulWidget {
  @override


  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController feedbackController = TextEditingController();
  bool isBugReport = false;

  void submitFeedback() {
    String feedbackText = feedbackController.text;
    bool isBug = isBugReport;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Feedback Submitted'),
          content: Text('Thank you for your feedback!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Provide Feedback'),
    ),
      body: Center(
      child: Column(
        children: [
          // Text(
          //   'Provide Feedback',
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
          SizedBox(height: 150,
          width: 100,),
          TextField(
            controller: feedbackController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: Colors.black38,
                  width: 1.0
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            alignLabelWithHint: true,

              hintText: 'Your feedback',

            ),
            maxLines: 4,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: isBugReport,
                onChanged: (value) {
                  setState(() {
                    isBugReport = value!;
                  });
                },
              ),
              Text('This is a negative feedback'),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: submitFeedback,
            child: Text('Submit Feedback'),
          ),
        ],
      ),
      ),
        bottomNavigationBar: NavBar(),
    );
  }
}
