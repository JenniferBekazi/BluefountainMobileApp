import 'package:flutter/material.dart';

class Allergies extends StatefulWidget{
  const Allergies({Key ? key}): super(key : key);


  State<Allergies> createState() => _AllergiesState();
}


class _AllergiesState extends State<Allergies>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Text(
          'Allergies',
        ),
      ),
    );
  }
}