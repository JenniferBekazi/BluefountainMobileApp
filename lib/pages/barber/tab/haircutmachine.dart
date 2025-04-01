import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/barberscard2.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/bookbarber.dart';
import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/moreInfor.dart';



import 'package:flutter/material.dart';






class HaircutMachineTab extends StatefulWidget{
  const HaircutMachineTab({Key ? key}): super(key : key);

  State<HaircutMachineTab> createState() => _HaircutMachineTabState();
}

class _HaircutMachineTabState extends State<HaircutMachineTab>  {
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
                child:

                BarberCard2(
                  imagePath: 'icons/barber1.png',
                  doctorName: 'R200',
                  doctorEmail: 'Bophelo',
                  doctorSpeciality: 'Centurion',
                  doctorNumber: 'Haircut Machine',
                  doctorLocation: 'Stacking',
                  doctorFirm: 'Razor shave',
                  doctorGender: 'HairStyling',
                  doctorAge: '150 clients',
                  doctorJob: '',
                  viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Bophelo', imagePath: 'icons/barber1.png',))),
                  bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
                ),),



              BarberCard2(
                imagePath: 'icons/barber2.png',
                doctorName: 'R350',
                doctorEmail: 'Shabani',
                doctorSpeciality: 'Soweto',
                doctorNumber: 'Haircut Machine',
                doctorLocation: 'Stacking',
                doctorFirm: 'Razor shave',
                doctorGender: 'Beard haircut',
                doctorAge: '225 clients',
                doctorJob: '',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Shabani', imagePath: 'icons/barber2.png',))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
              ),


              BarberCard2(
                imagePath: 'icons/barber3.png',
                doctorName: 'R250',
                doctorEmail: 'Itumeleng',
                doctorSpeciality: 'Pretoria',
                doctorNumber: 'Haircut Machine',
                doctorLocation: 'Stacking',
                doctorFirm: 'Razor shave',
                doctorGender: 'Beard haircut',
                doctorAge: '250 clients',
                doctorJob: '',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Itumeleng', imagePath: 'icons/barber3.png',))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
              ),



              BarberCard2(
                imagePath: 'icons/barber1.png',
                doctorName: 'R200',
                doctorEmail: 'Bophelo',
                doctorSpeciality: 'Centurion',
                doctorNumber: 'Haircut Machine',
                doctorLocation: 'Stacking',
                doctorFirm: 'Razor shave',
                doctorGender: 'HairStyling',
                doctorAge: '150 clients',
                doctorJob: '',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Bophelo', imagePath: 'icons/barber1.png',))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
              ),



              BarberCard2(
                imagePath: 'icons/barber2.png',
                doctorName: 'R350',
                doctorEmail: 'Shabani',
                doctorSpeciality: 'Soweto',
                doctorNumber: 'Haircut Machine',
                doctorLocation: 'Stacking',
                doctorFirm: 'Razor shave',
                doctorGender: 'Beard haircut',
                doctorAge: '225 clients',
                doctorJob: '',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Shabani', imagePath: 'icons/barber2.png',))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
              ),



              BarberCard2(
                imagePath: 'icons/barber3.png',
                doctorName: 'R250',
                doctorEmail: 'Itumeleng',
                doctorSpeciality: 'Pretoria',
                doctorNumber: 'Haircut Machine',
                doctorLocation: 'Stacking',
                doctorFirm: 'Razor shave',
                doctorGender: 'Beard haircut',
                doctorAge: '250 clients',
                doctorJob: '',
                viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Itumeleng', imagePath: 'icons/barber3.png',))),
                bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
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
            SizedBox(height: 5,),

            BarberCard(
              imagePath: 'icons/barber1.png',
              doctorName: 'R200',
              doctorEmail: 'Bophelo',
              doctorSpeciality: 'Centurion',
              doctorNumber: 'Haircut Machine',
              doctorLocation: 'Stacking',
              doctorFirm: 'Razor shave',
              doctorGender: 'HairStyling',
              doctorAge: '150 clients',
              doctorJob: '',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Bophelo', imagePath: 'icons/barber1.png',))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),

            SizedBox(height: 5,),

            BarberCard(
              imagePath: 'icons/barber2.png',
              doctorName: 'R350',
              doctorEmail: 'Shabani',
              doctorSpeciality: 'Soweto',
              doctorNumber: 'Haircut Machine',
              doctorLocation: 'Stacking',
              doctorFirm: 'Razor shave',
              doctorGender: 'Beard haircut',
              doctorAge: '225 clients',
              doctorJob: '',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Shabani', imagePath: 'icons/barber2.png',))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),

            SizedBox(height: 5,),

            BarberCard(
              imagePath: 'icons/barber3.png',
              doctorName: 'R250',
              doctorEmail: 'Itumeleng',
              doctorSpeciality: 'Pretoria',
              doctorNumber: 'Haircut Machine',
              doctorLocation: 'Stacking',
              doctorFirm: 'Razor shave',
              doctorGender: 'Beard haircut',
              doctorAge: '250 clients',
              doctorJob: '',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Itumeleng', imagePath: 'icons/barber3.png',))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),

            SizedBox(height: 5,),

            BarberCard(
              imagePath: 'icons/barber1.png',
              doctorName: 'R200',
              doctorEmail: 'Bophelo',
              doctorSpeciality: 'Centurion',
              doctorNumber: 'Haircut Machine',
              doctorLocation: 'Stacking',
              doctorFirm: 'Razor shave',
              doctorGender: 'HairStyling',
              doctorAge: '150 clients',
              doctorJob: '',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Bophelo', imagePath: 'icons/barber1.png',))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),

            SizedBox(height: 5,),

            BarberCard(
              imagePath: 'icons/barber2.png',
              doctorName: 'R350',
              doctorEmail: 'Shabani',
              doctorSpeciality: 'Soweto',
              doctorNumber: 'Haircut Machine',
              doctorLocation: 'Stacking',
              doctorFirm: 'Razor shave',
              doctorGender: 'Beard haircut',
              doctorAge: '225 clients',
              doctorJob: '',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Shabani', imagePath: 'icons/barber2.png',))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),

            SizedBox(height: 5,),

            BarberCard(
              imagePath: 'icons/barber3.png',
              doctorName: 'R250',
              doctorEmail: 'Itumeleng',
              doctorSpeciality: 'Pretoria',
              doctorNumber: 'Haircut Machine',
              doctorLocation: 'Stacking',
              doctorFirm: 'Razor shave',
              doctorGender: 'Beard haircut',
              doctorAge: '250 clients',
              doctorJob: '',
              viewFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewBarber(callTime: 'Working Hours:''MON - FRI',doctorLocation: 'Centurion', doctorName: 'Itumeleng', imagePath: 'icons/barber3.png',))),
              bookFunction: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookBarber())),
            ),


          ],
        );
      },
    );
  }
}

