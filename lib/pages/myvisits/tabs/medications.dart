import 'package:flutter/material.dart';

class Medications extends StatefulWidget{
  const Medications({Key ? key}): super(key : key);


  State<Medications> createState() => _MedicationsState();
}


class _MedicationsState extends State<Medications>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Text(
          'Medication',
        ),
      ),
    );
  }
}