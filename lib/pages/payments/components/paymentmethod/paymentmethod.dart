// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//
//
// class PaymentMethod extends StatefulWidget{
//   const PaymentMethod({Key ? key}): super(key : key);
//
//   State<PaymentMethod> createState() => _PaymentMethodState();
// }
//
// class _PaymentMethodState extends State<PaymentMethod>{
//   @override
//   Widget build(BuildContext context){
//     return  Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//
//
//
//         Center(
//           child: Text(
//             'You have 3 active payment methods.',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 22,
//             ),
//           ),
//         ),
//
//         SizedBox(height: 20,),
//
//         Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Slidable(
//                 startActionPane: ActionPane(
//                   motion: ScrollMotion(),
//                   children: <Widget>[
//                     SlidableAction(
//                       icon: Icons.remove_red_eye_outlined,
//                       backgroundColor: Colors.lightBlueAccent,
//                       label: 'View Details',
//                       onPressed: (context) => print('view'),
//                     ),
//
//                     SlidableAction(
//                       icon: Icons.delete_forever_outlined,
//                       backgroundColor: Colors.deepOrangeAccent,
//                       label: 'Remove',
//                       onPressed: (context) => print('remove'),
//                     ),
//                   ],
//                 ),
//
//                 child: ListTile(
//                   leading: Icon(Icons.paypal, color: Colors.blue,),
//                   title: Text('PayPal: brianmashavakure@gmail.com '),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 5,),
//
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Slidable(
//                 startActionPane: ActionPane(
//                   motion: ScrollMotion(),
//                   children: <Widget>[
//                     SlidableAction(
//                       icon: Icons.remove_red_eye_outlined,
//                       backgroundColor: Colors.lightBlueAccent,
//                       label: 'View Details',
//                       onPressed: (context) => print('view'),
//                     ),
//
//                     SlidableAction(
//                       icon: Icons.delete_forever_outlined,
//                       backgroundColor: Colors.deepOrangeAccent,
//                       label: 'Remove',
//                       onPressed: (context) => print('remove'),
//                     ),
//                   ],
//                 ),
//
//                 child: ListTile(
//                   leading: FaIcon(FontAwesomeIcons.bank, color: Colors.teal,),
//                   title: Text('Capitec Bank , Account number AED2345678'),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 5,),
//
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Slidable(
//                 startActionPane: ActionPane(
//                   motion: ScrollMotion(),
//                   children: <Widget>[
//                     SlidableAction(
//                       icon: Icons.remove_red_eye_outlined,
//                       backgroundColor: Colors.lightBlueAccent,
//                       label: 'View Details',
//                       onPressed: (context) => print('view'),
//                     ),
//
//                     SlidableAction(
//                       icon: Icons.delete_forever_outlined,
//                       backgroundColor: Colors.deepOrangeAccent,
//                       label: 'Remove',
//                       onPressed: (context) => print('remove'),
//                     ),
//                   ],
//                 ),
//
//                 child: ListTile(
//                   leading: FaIcon(FontAwesomeIcons.creditCard, color: Colors.greenAccent,),
//                   title: Text('FNB Wealth Management Fund card'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }


import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/card_month.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/master_card.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/card_input.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/card_alert.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/components/painter.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/constants.dart';

class PaymentsM extends StatefulWidget {
  const PaymentsM({Key? key}) : super(key: key);

  @override
  State<PaymentsM> createState() => _PaymentsMState();
}

class _PaymentsMState extends State<PaymentsM> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderNameController =
  TextEditingController();
  final TextEditingController cardExpiryDateController =
  TextEditingController();
  final TextEditingController cardCvvController = TextEditingController();

  final FlipCardController flipCardController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              FlipCard(
                  fill: Fill.fillFront,
                  direction: FlipDirection.HORIZONTAL,
                  controller: flipCardController,
                  onFlip: () {
                    print('Flip');
                  },
                  flipOnTouch: false,
                  onFlipDone: (isFront) {
                    print('isFront: $isFront');
                  },
                  front: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: buildCreditCard(
                      color: kDarkBlue,
                      cardExpiration: cardExpiryDateController.text.isEmpty
                          ? "08/2022"
                          : cardExpiryDateController.text,
                      cardHolder: cardHolderNameController.text.isEmpty
                          ? "Card Holder"
                          : cardHolderNameController.text.toUpperCase(),
                      cardNumber: cardNumberController.text.isEmpty
                          ? "XXXX XXXX XXXX XXXX"
                          : cardNumberController.text,
                    ),
                  ),
                  back: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 4.0,
                      color: kDarkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        height: 230,
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, bottom: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 0),
                            const Text(
                              'https://www.paypal.com',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width / 1.2,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            CustomPaint(
                              painter: MyPainter(),
                              child: SizedBox(
                                height: 35,
                                width: MediaQuery.of(context).size.width / 1.2,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      cardCvvController.text.isEmpty
                                          ? "322"
                                          : cardCvvController.text,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 21,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 40),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.12,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  controller: cardNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Card Number',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    CardInputFormatter(),
                  ],
                  onChanged: (value) {
                    var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                    setState(() {
                      cardNumberController.value = cardNumberController.value
                          .copyWith(
                          text: text,
                          selection:
                          TextSelection.collapsed(offset: text.length),
                          composing: TextRange.empty);
                    });
                  },
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.12,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  controller: cardHolderNameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      cardHolderNameController.value =
                          cardHolderNameController.value.copyWith(
                              text: value,
                              selection:
                              TextSelection.collapsed(offset: value.length),
                              composing: TextRange.empty);
                    });
                  },
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: cardExpiryDateController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: 'MM/YY',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                        CardDateInputFormatter(),
                      ],
                      onChanged: (value) {
                        var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                        setState(() {
                          cardExpiryDateController.value =
                              cardExpiryDateController.value.copyWith(
                                  text: text,
                                  selection: TextSelection.collapsed(
                                      offset: text.length),
                                  composing: TextRange.empty);
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: cardCvvController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: 'CVV',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                      ],
                      onTap: () {
                        setState(() {
                          Future.delayed(const Duration(milliseconds: 300), () {
                            flipCardController.toggleCard();
                          });
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          int length = value.length;
                          if (length == 4 || length == 9 || length == 14) {
                            cardNumberController.text = '$value ';
                            cardNumberController.selection =
                                TextSelection.fromPosition(
                                    TextPosition(offset: value.length + 1));
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20 * 3),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize:
                  Size(MediaQuery.of(context).size.width / 1.12, 55),
                ),
                onPressed: () {
                  Future.delayed(const Duration(milliseconds: 300), () {
                    showDialog(
                        context: context,
                        builder: (context) => const CardAlertDialog());
                    cardCvvController.clear();
                    cardExpiryDateController.clear();
                    cardHolderNameController.clear();
                    cardNumberController.clear();
                    flipCardController.toggleCard();
                  });
                },
                child: Text(
                  'Add Card'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}