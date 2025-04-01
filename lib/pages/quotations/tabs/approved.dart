import 'package:flutter/material.dart';

import '../components/viewquotationcard.dart';

class ApprovedTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            ViewCard(
              status: 'Approved',
              date: '2023-07-31',
              dueDate: '2023-08-01',
              immediatePaymemt: 'No',
              products: 'Allergy Relief',
              patientName: 'Nyasha Chaingei',
              total: '235',
              currency: 'USD',
            ),

            SizedBox(height: 10,),

            ViewCard(
              status: 'Approved',
              date: '2023-07-31',
              dueDate: '2023-08-01',
              immediatePaymemt: 'Yes',
              products: 'Allergy Relief',
              patientName: 'Nyasha Chaingei',
              total: '235',
              currency: 'USD',
            ),

          ],
        ),
      ),
    );
  }
}