import '/pages/prescriptions/viewprescriptions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'pages/homepage.dart';
import 'pages/authentication/login.dart';
import 'pages/authentication/utils.dart';



Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MyApp());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //instantiating utils class
  final utilsObj = new Utils();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: utilsObj.messengerKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      routes: {
        ViewPrescriptions.route: (context) => const ViewPrescriptions(),
      },
      home:
      StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return HomePage();
          }else if (snapshot.hasError) {
            return Center(child: Text(
              'Something went wrong please try again',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)
              ,),);
          }
          else {
            return Login();
          }
        },
      ),
    );
  }
}
