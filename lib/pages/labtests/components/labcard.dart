import 'package:flutter/material.dart';


class LabCard extends StatelessWidget{

  final String? labName;
  final String? imageUrl;
  final viewLab;

  LabCard({this.labName, this.imageUrl, this.viewLab});

  //TODO: add lab logos

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: viewLab,
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(11),
        child: Container(
          height: 90,
          padding: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 25,
                width: 30,
                child: Image.asset(
                  imageUrl!,
                  fit: BoxFit.fitHeight,
                ),
              ),

              SizedBox(height: 20,),

              Text(labName!, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

            ],
          ),
        ),
      ),
    );
  }
}