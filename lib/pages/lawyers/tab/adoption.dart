
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/booklawyer.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/lawyerscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/lawyerscard2.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/lawyers/viewbookings.dart';
import 'package:flutter/material.dart';




class AdoptionTab extends StatefulWidget{
  const AdoptionTab({Key ? key}): super(key : key);

  State<AdoptionTab> createState() => _AdoptionTabState();
}

class _AdoptionTabState extends State<AdoptionTab>  {
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
                child: LawyersCard2(
                  imagePath: 'icons/lawyer1.jpg',
                  doctorName: 'Jonny Books',
                  doctorLocation: 'Harare',
                  doctorGender: 'Male',
                  doctorFirm: 'Jonny Human Attoney',
                  doctorEmail: 'jonnybooks@gmail.com',
                  doctorSpeciality: 'Child Services',
                  doctorNumber: '+263 780028122',
                  viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
                  bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
                ),
              ),

            LawyersCard2(
              imagePath: 'icons/lawyer2.jpg',
              doctorName: 'Emmery Books',
              doctorLocation: 'Harare',
              doctorGender: 'Female',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'emmery@gmail.com',
              doctorSpeciality: 'Divorce',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),


            LawyersCard2(
              imagePath: 'icons/lawyer3.jpg',
              doctorName: 'Smith Antony',
              doctorLocation: 'Harare',
              doctorGender: 'Male',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'smith@gmail.com',
              doctorSpeciality: 'Child Services',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),

            LawyersCard2(
              imagePath: 'icons/lawyer1.jpg',
              doctorName: 'Jonny Books',
              doctorLocation: 'Harare',
              doctorGender: 'Male',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'jonnybooks@gmail.com',
              doctorSpeciality: 'Child Services',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),


            LawyersCard2(
              imagePath: 'icons/lawyer2.jpg',
              doctorName: 'Emmery Books',
              doctorLocation: 'Harare',
              doctorGender: 'Female',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'emmery@gmail.com',
              doctorSpeciality: 'Divorce',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),


            LawyersCard2(
              imagePath: 'icons/lawyer3.jpg',
              doctorName: 'Smith Antony',
              doctorLocation: 'Harare',
              doctorGender: 'Male',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'smith@gmail.com',
              doctorSpeciality: 'Child Services',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
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
            LawyersCard(
              imagePath: 'icons/lawyer1.jpg',
              doctorName: 'Jonny Books',
              doctorLocation: 'Harare',
              doctorGender: 'Male',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'jonnybooks@gmail.com',
              doctorSpeciality: 'Child Services',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),

            SizedBox(height: 5,),

            LawyersCard(
              imagePath: 'icons/lawyer2.jpg',
              doctorName: 'Emmery Books',
              doctorLocation: 'Harare',
              doctorGender: 'Female',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'emmery@gmail.com',
              doctorSpeciality: 'Divorce',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),

            SizedBox(height: 5,),

            LawyersCard(
              imagePath: 'icons/lawyer3.jpg',
              doctorName: 'Smith Antony',
              doctorLocation: 'Harare',
              doctorGender: 'Male',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'smith@gmail.com',
              doctorSpeciality: 'Child Services',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),

            LawyersCard(
              imagePath: 'icons/lawyer1.jpg',
              doctorName: 'Jonny Books',
              doctorLocation: 'Harare',
              doctorGender: 'Male',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'jonnybooks@gmail.com',
              doctorSpeciality: 'Child Services',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),

            SizedBox(height: 5,),

            LawyersCard(
              imagePath: 'icons/lawyer2.jpg',
              doctorName: 'Emmery Books',
              doctorLocation: 'Harare',
              doctorGender: 'Female',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'emmery@gmail.com',
              doctorSpeciality: 'Divorce',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),

            SizedBox(height: 5,),

            LawyersCard(
              imagePath: 'icons/lawyer3.jpg',
              doctorName: 'Smith Antony',
              doctorLocation: 'Harare',
              doctorGender: 'Male',
              doctorFirm: 'Jonny Human Attoney',
              doctorEmail: 'smith@gmail.com',
              doctorSpeciality: 'Child Services',
              doctorNumber: '+263 780028122',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBookings())),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookLawyer())),
            ),
          ],
        );
      },
    );
  }
}
