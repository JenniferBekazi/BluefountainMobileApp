import 'package:flutter/material.dart';

class Diagnosis extends StatefulWidget{
  const Diagnosis({Key ? key}): super(key : key);


  State<Diagnosis> createState() => _DiagnosisState();
}


class _DiagnosisState extends State<Diagnosis>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Text(
          'Treatement Details',
        ),
      ),
    );
  }
}