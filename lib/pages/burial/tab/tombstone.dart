import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/bookbarber.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/moreInfor.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/burialcard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/burialcard2.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/burial/moreInfor.dart';

import 'package:flutter/material.dart';






class TombstoneTab extends StatefulWidget{
  const TombstoneTab({Key ? key}): super(key : key);

  State<TombstoneTab> createState() => _TombstoneTabState();
}

class _TombstoneTabState extends State<TombstoneTab>  {
  bool isGrid = true;
  final searchController = TextEditingController();







  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Switch to '),
            Switch(
              value: isGrid,
              onChanged: (value) {
                setState(() {
                  isGrid = value;
                });
              },
            ),
            Text(isGrid ? 'ListView' : 'GridView'),
          ],
        ),
        Expanded(
          flex: 4,
          child: isGrid ? buildListView() : buildGridView(),
        ),
      ],
    );
  }

  Widget buildGridView() {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                hintText: 'search by name or location',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 28.0,
                  ),
                  onPressed: () {},)
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: GridView(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
            ),
            shrinkWrap: true,

            children: [
              Expanded(
                flex: 4,
                child: BurialCard(
                  imagePath: 'icons/burial1.jpg',
                  doctorEmail: 'King Burial Parlour',
                  doctorName: 'Custom Clothing',
                  doctorSpeciality: 'Custom Clothing',
                  doctorNumber: 'Caskets',
                  doctorLocation: 'Flowers',
                  doctorFirm: 'Tombstone',
                  doctorGender: 'Hearses',
                  doctorJob: 'Urns',
                  viewFunction: () =>
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ViewBurial(
                                callTime: 'Working Hours:' 'MON - FRI',
                                doctorLocation: 'Centurion',
                                doctorName: 'Gauteng',
                                imagePath: 'icons/burial1.jpg',
                              ))),
                  bookFunction: () =>
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => BookBarber())),
                ),
              ),
              BurialCard(
                imagePath: 'icons/burial2.jpg',
                doctorEmail: 'Queens Burial Parlour',
                doctorName: 'Custom Clothing',
                doctorSpeciality: 'Custom Clothing',
                doctorNumber: 'Caskets',
                doctorLocation: 'Flowers',
                doctorFirm: 'Tombstone',
                doctorGender: 'Hearses',
                doctorJob: 'Urns',
                viewFunction: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ViewBurial(
                              callTime: 'Working Hours:' 'MON - FRI',
                              doctorLocation: 'Centurion',
                              doctorName: 'Gauteng',
                              imagePath: 'icons/burial2.jpg',
                            ))),
                bookFunction: () =>
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => BookBarber())),
              ),
              BurialCard(
                imagePath: 'icons/burial3.jpg',
                doctorEmail: 'Ayo Burial Parlour',
                doctorName: 'Custom Clothing',
                doctorSpeciality: 'Custom Clothing',
                doctorNumber: 'Caskets',
                doctorLocation: 'Flowers',
                doctorFirm: 'Tombstone',
                doctorGender: 'Hearses',
                doctorJob: 'Urns',
                viewFunction: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ViewBurial(
                              callTime: 'Working Hours:' 'MON - FRI',
                              doctorLocation: 'Centurion',
                              doctorName: 'Gauteng',
                              imagePath: 'icons/burial3.jpg'
                                  '',
                            ))),
                bookFunction: () =>
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => BookBarber())),
              ),
              BurialCard(
                imagePath: 'icons/burial1.jpg',
                doctorEmail: 'King Burial Parlour',
                doctorName: 'Custom Clothing',
                doctorSpeciality: 'Custom Clothing',
                doctorNumber: 'Caskets',
                doctorLocation: 'Flowers',
                doctorFirm: 'Tombstone',
                doctorGender: 'Hearses',
                doctorJob: 'Urns',
                viewFunction: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ViewBurial(
                              callTime: 'Working Hours:' 'MON - FRI',
                              doctorLocation: 'Centurion',
                              doctorName: 'Gauteng',
                              imagePath: 'icons/burial1.jpg',
                            ))),
                bookFunction: () =>
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => BookBarber())),
              ),
              BurialCard(
                imagePath: 'icons/burial1.jpg',
                doctorEmail: 'King Burial Parlour',
                doctorName: 'Custom Clothing',
                doctorSpeciality: 'Custom Clothing',
                doctorNumber: 'Caskets',
                doctorLocation: 'Flowers',
                doctorFirm: 'Tombstone',
                doctorGender: 'Hearses',
                doctorJob: 'Urns',
                viewFunction: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ViewBurial(
                              callTime: 'Working Hours:' 'MON - FRI',
                              doctorLocation: 'Centurion',
                              doctorName: 'Gauteng',
                              imagePath: 'icons/burial1.jpg',
                            ))),
                bookFunction: () =>
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => BookBarber())),
              ),
              BurialCard(
                imagePath: 'icons/burial1.jpg',
                doctorEmail: 'King Burial Parlour',
                doctorName: 'Custom Clothing',
                doctorSpeciality: 'Custom Clothing',
                doctorNumber: 'Caskets',
                doctorLocation: 'Flowers',
                doctorFirm: 'Tombstone',
                doctorGender: 'Hearses',
                doctorJob: 'Urns',
                viewFunction: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ViewBurial(
                              callTime: 'Working Hours:' 'MON - FRI',
                              doctorLocation: 'Centurion',
                              doctorName: 'Gauteng',
                              imagePath: 'icons/burial1.jpg',
                            ))),
                bookFunction: () =>
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => BookBarber())),
              ),
              BurialCard(
                imagePath: 'icons/burial1.jpg',
                doctorEmail: 'King Burial Parlour',
                doctorName: 'Custom Clothing',
                doctorSpeciality: 'Custom Clothing',
                doctorNumber: 'Caskets',
                doctorLocation: 'Flowers',
                doctorFirm: 'Tombstone',
                doctorGender: 'Hearses',
                doctorJob: 'Urns',
                viewFunction: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ViewBurial(
                              callTime: 'Working Hours:' 'MON - FRI',
                              doctorLocation: 'Centurion',
                              doctorName: 'Gauteng',
                              imagePath: 'icons/burial1.jpg',
                            ))),
                bookFunction: () =>
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => BookBarber())),
              ),
            ]

        ),
      ),
    ]
    );
  }


  Widget buildListView() {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  hintText: 'search by name or location',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 28.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            BurialCard2(
              imagePath: 'icons/burial1.jpg',
              doctorEmail: 'King Burial Parlour',
              doctorName: 'Custom Clothing',
              doctorSpeciality: 'Custom Clothing',
              doctorNumber: 'Caskets',
              doctorLocation: 'Flowers',
              doctorFirm: 'Tombstone',
              doctorGender: 'Hearses',
              doctorJob: 'Urns',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewBurial(
                    callTime: 'Working Hours:' 'MON - FRI',
                    doctorLocation: 'Centurion',
                    doctorName: 'Gauteng',
                    imagePath: 'icons/burial1.jpg',
                  ))),
              bookFunction: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),
            SizedBox(
              height: 5,
            ),
            BurialCard2(
              imagePath: 'icons/burial2.jpg',
              doctorEmail: 'Queens Burial Parlour',
              doctorName: 'Custom Clothing',
              doctorSpeciality: 'Custom Clothing',
              doctorNumber: 'Caskets',
              doctorLocation: 'Flowers',
              doctorFirm: 'Tombstone',
              doctorGender: 'Hearses',
              doctorJob: 'Urns',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewBurial(
                    callTime: 'Working Hours:' 'MON - FRI',
                    doctorLocation: 'Centurion',
                    doctorName: 'Gauteng',
                    imagePath: 'icons/burial2.jpg',
                  ))),
              bookFunction: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),
            SizedBox(
              height: 5,
            ),
            BurialCard2(
              imagePath: 'icons/burial3.jpg',
              doctorEmail: 'Ayo Burial Parlour',
              doctorName: 'Custom Clothing',
              doctorSpeciality: 'Custom Clothing',
              doctorNumber: 'Caskets',
              doctorLocation: 'Flowers',
              doctorFirm: 'Tombstone',
              doctorGender: 'Hearses',
              doctorJob: 'Urns',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewBurial(
                    callTime: 'Working Hours:' 'MON - FRI',
                    doctorLocation: 'Centurion',
                    doctorName: 'Gauteng',
                    imagePath: 'icons/burial3.jpg'
                        '',
                  ))),
              bookFunction: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),
            SizedBox(
              height: 5,
            ),
            BurialCard2(
              imagePath: 'icons/burial3.jpg',
              doctorEmail: 'Ayo Burial Parlour',
              doctorName: 'Custom Clothing',
              doctorSpeciality: 'Custom Clothing',
              doctorNumber: 'Caskets',
              doctorLocation: 'Flowers',
              doctorFirm: 'Tombstone',
              doctorGender: 'Hearses',
              doctorJob: 'Urns',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewBurial(
                    callTime: 'Working Hours:' 'MON - FRI',
                    doctorLocation: 'Centurion',
                    doctorName: 'Gauteng',
                    imagePath: 'icons/burial3.jpg'
                        '',
                  ))),
              bookFunction: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),
            SizedBox(
              height: 5,
            ),
            BurialCard2(
              imagePath: 'icons/burial3.jpg',
              doctorEmail: 'Ayo Burial Parlour',
              doctorName: 'Custom Clothing',
              doctorSpeciality: 'Custom Clothing',
              doctorNumber: 'Caskets',
              doctorLocation: 'Flowers',
              doctorFirm: 'Tombstone',
              doctorGender: 'Hearses',
              doctorJob: 'Urns',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewBurial(
                    callTime: 'Working Hours:' 'MON - FRI',
                    doctorLocation: 'Centurion',
                    doctorName: 'Gauteng',
                    imagePath: 'icons/burial3.jpg'
                        '',
                  ))),
              bookFunction: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),
            SizedBox(
              height: 5,
            ),
            BurialCard2(
              imagePath: 'icons/burial3.jpg',
              doctorEmail: 'Ayo Burial Parlour',
              doctorName: 'Custom Clothing',
              doctorSpeciality: 'Custom Clothing',
              doctorNumber: 'Caskets',
              doctorLocation: 'Flowers',
              doctorFirm: 'Tombstone',
              doctorGender: 'Hearses',
              doctorJob: 'Urns',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewBurial(
                    callTime: 'Working Hours:' 'MON - FRI',
                    doctorLocation: 'Centurion',
                    doctorName: 'Gauteng',
                    imagePath: 'icons/burial3.jpg'
                        '',
                  ))),
              bookFunction: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),
          ],
        );
      },
    );
  }
}
