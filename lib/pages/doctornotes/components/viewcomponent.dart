import 'package:flutter/material.dart';

class ViewComponent extends StatelessWidget{
  final String? noteBody;
  final String? doctorName;
  final String? hospitalName;

  ViewComponent({
    this.noteBody,
    this.doctorName,
    this.hospitalName,
  });


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                noteBody!,
                maxLines: 10,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),

              SizedBox( height: 10,),

              Text('Best Regards, ${doctorName!}', style: TextStyle(fontSize: 15,),),
              SizedBox(height: 3,),
              Text(hospitalName!, style: TextStyle(fontSize: 15,),),
            ],
      ),
    );
  }
}