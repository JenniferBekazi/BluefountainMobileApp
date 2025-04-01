import 'package:flutter/material.dart';
import 'paymentinfo.dart';

class Payments extends StatefulWidget{
  const Payments({Key ? key}): super(key : key);

  State<Payments> createState() => _PaymentsState();
}


class _PaymentsState extends State<Payments>{
  //searchbar controller
  final searchController = TextEditingController();



  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          //search bar
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                    alignLabelWithHint: true,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8),
                    ),
                    hintText: 'search by invoice number',
                    suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

                ),
              ),
            ),
          ),

          SizedBox(height: 15,),

          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //
          //     //TODO: Make department and amounts dynamic
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)
          //             ),
          //             title: Text('Payment Details'),
          //             content:
          //             PaymentInfo(
          //               invoice: 'APP302218',
          //               reference: '2345678',
          //               department: 'Surgery',
          //               payment: 'Cash',
          //               amount: 'R20 000',
          //               date: '2023-01-23',
          //             ),
          //             actions: [
          //               TextButton(
          //                 child: Text('Close'),
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //       child: Material(
          //         elevation: 1,
          //         borderRadius: BorderRadius.circular(12),
          //         child: Container(
          //           height: 50,
          //           width: 900,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Colors.blueGrey,
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: <Widget>[
          //               Text('R20 000 Payment to the Surgery Department', style: TextStyle(color: Colors.black),),
          //
          //               Icon(Icons.arrow_forward_ios, color: Colors.black)
          //
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //
          //     SizedBox(height: 10,),
          //
          //     GestureDetector(
          //       onTap:() => showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)
          //             ),
          //             title: Text('Payment Details'),
          //             content:
          //             PaymentInfo(
          //               invoice: 'APP405117',
          //               reference: '567810',
          //               department: 'Cardiology',
          //               payment: 'Card',
          //               amount: 'R5000',
          //               date: '2023-07-01',
          //             ),
          //             actions: [
          //               TextButton(
          //                 child: Text('Close'),
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //       child: Material(
          //         elevation: 1,
          //         borderRadius: BorderRadius.circular(12),
          //         child: Container(
          //           height: 50,
          //           width: 900,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Colors.blueGrey,
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: <Widget>[
          //               Text('R5 000 Payment to the Cardiology Department', style: TextStyle(color: Colors.black),),
          //
          //               Icon(Icons.arrow_forward_ios, color: Colors.black,)
          //
          //             ],
          //           ),
          //
          //         ),
          //       ),
          //     ),
          //
          //
          //     SizedBox(height: 10,),
          //
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)
          //             ),
          //             title: Text('Payment Details'),
          //             content:
          //             PaymentInfo(
          //               invoice: 'APP467891',
          //               reference: '985431',
          //               department: 'Radiology',
          //               payment: 'Transfer',
          //               amount: 'R6000',
          //               date: '2022-12-05',
          //             ),
          //             actions: [
          //               TextButton(
          //                 child: Text('Close'),
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //       child: Material(
          //         elevation: 1,
          //         borderRadius: BorderRadius.circular(12),
          //         child: Container(
          //           height: 50,
          //           width: 900,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Colors.blueGrey,
          //           ),
          //           child:Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: <Widget>[
          //               Text('R6 000 Payment to the Radiology Department', style: TextStyle(color: Colors.black),),
          //
          //               Icon(Icons.arrow_forward_ios, color: Colors.black)
          //
          //             ],
          //           ),
          //
          //         ),
          //       ),
          //     ),
          //
          //     SizedBox(height: 10,),
          //
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)
          //             ),
          //             title: Text('Payment Details'),
          //             content:
          //             PaymentInfo(
          //               invoice: 'APP678942',
          //               reference: '5632041',
          //               department: 'Oncology',
          //               payment: 'Card',
          //               amount: 'R6000',
          //               date: '2022-12-05',
          //             ),
          //             actions: [
          //               TextButton(
          //                 child: Text('Close'),
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //       child: Material(
          //         elevation: 1,
          //         borderRadius: BorderRadius.circular(12),
          //         child: Container(
          //           height: 50,
          //           width: 900,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Colors.blueGrey,
          //           ),
          //           child:  Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: <Widget>[
          //               Text('R6 000 Payment to the Oncology Department', style: TextStyle(color: Colors.black),),
          //
          //               Icon(Icons.arrow_forward_ios, color: Colors.black)
          //
          //             ],
          //           ),
          //
          //         ),
          //       ),
          //     ),
          //
          //     SizedBox(height: 10,),
          //
          //
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)
          //             ),
          //             title: Text('Payment Details'),
          //             content:
          //             PaymentInfo(
          //               invoice: 'APP678632',
          //               reference: '568965',
          //               department: 'Oncology',
          //               payment: 'Cash',
          //               amount: 'R3000',
          //               date: '2022-12-05',
          //             ),
          //             actions: [
          //               TextButton(
          //                 child: Text('Close'),
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //       child: Material(
          //         elevation: 1,
          //         borderRadius: BorderRadius.circular(12),
          //         child: Container(
          //           height: 50,
          //           width: 900,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Colors.blueGrey,
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: <Widget>[
          //               Text('R3 000 Payment to the Oncology Department', style: TextStyle(color: Colors.black),),
          //
          //               Icon(Icons.arrow_forward_ios, color: Colors.black,)
          //
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //
          //
          //     SizedBox(height: 10,),
          //
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)
          //             ),
          //             title: Text('Payment Details'),
          //             content:
          //             PaymentInfo(
          //               invoice: 'APP320976',
          //               reference: '320965',
          //               department: 'Radiology',
          //               payment: 'Cash',
          //               amount: 'R20 00',
          //               date: '2023-05-05',
          //             ),
          //             actions: [
          //               TextButton(
          //                 child: Text('Close'),
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //       child: Material(
          //         elevation: 1,
          //         borderRadius: BorderRadius.circular(12),
          //         child: Container(
          //           height: 50,
          //           width: 900,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Colors.blueGrey,
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: <Widget>[
          //               Text('R20 000 Payment to the Radiology Department', style: TextStyle(color: Colors.black),),
          //
          //               Icon(Icons.arrow_forward_ios, color:Colors.black,)
          //
          //             ],
          //           ),
          //
          //         ),
          //       ),
          //     ),
          //
          //     SizedBox(height: 10,),
          //
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10)
          //             ),
          //             title: Text('Payment Details'),
          //             content:
          //             PaymentInfo(
          //               invoice: 'APP670932',
          //               reference: '905421',
          //               department: 'Surgery',
          //               payment: 'Card',
          //               amount: 'R100 000',
          //               date: '2023-06-24',
          //             ),
          //             actions: [
          //               TextButton(
          //                 child: Text('Close'),
          //                 onPressed: () {
          //                   Navigator.of(context).pop();
          //                 },
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //       child: Material(
          //         elevation: 1,
          //         borderRadius: BorderRadius.circular(12),
          //         child: Container(
          //           height: 50,
          //           width: 900,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Colors.blueGrey,
          //           ),
          //           child:Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: <Widget>[
          //               Text('R100 000 Payment to the Surgery Department',style: TextStyle(color: Colors.black),),
          //
          //               Icon(Icons.arrow_forward_ios, color: Colors.black,)
          //
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),



        ],
      ),
    );
  }
}
