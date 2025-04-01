import 'package:flutter/material.dart';

class VitalSigns extends StatefulWidget{
  const VitalSigns({Key ? key}): super(key : key);


  State<VitalSigns> createState() => _VitalSignsState();
}


class _VitalSignsState extends State<VitalSigns>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Text(
          'Vital Signs',
        ),
      ),
    );
  }
}