import 'package:flutter/material.dart';
import 'package:minio/minio.dart';
import 'dart:io';


class DocumentComponent extends StatelessWidget{
  final String? documentName;
  final viewFunction;

  DocumentComponent({
    this.documentName,
    this.viewFunction,
});

  //TODO: add view functionality

  //download functionality




  var bucketName = 'flutter-test-bucket';


  var _accesskey = 's8fEc0JzPox2XIOzmaEG';
  var _secretkey = 'CsdPcfIM12E7WAaHI82XHRrGbLlr2j7pQ0oqPBAI';



  @override
  Widget build(BuildContext context){
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: viewFunction,
        child: Container(
          width: 700,
          height: 65,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue.withOpacity(0.09),
            border: Border.all(
              color: Colors.black12,
              width: 1.0,
            )
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Row(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Icon(
                   Icons.file_copy_outlined,
                   size: 23,
                 ),

                 SizedBox(width: 10,),

                 Text(documentName!, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),

               ],
             ),



              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.cloud_download,
                  size: 23,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
