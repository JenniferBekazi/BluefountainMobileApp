import 'package:flutter/material.dart';
import '../components/viewComponent.dart';


class PreviousTab extends StatefulWidget{
  const PreviousTab({Key ? key}): super(key : key);

  State<PreviousTab> createState() => _PreviousTabState();
}

class _PreviousTabState extends State<PreviousTab>{

  final searchController = TextEditingController();

  List<Surgery> surgery = [
    Surgery(
      doctorName: 'Matthew Blythe',
      surgeryDate: '2023-05-12',
      surgeryType: 'Vasectomy',
      surgeryVenue: 'Arcadia OP Theater 4',
      description: 'Lorem ipsum manai',
    ),
    Surgery(
      doctorName: 'Matthew Blythe',
      surgeryDate: '2023-05-12',
      surgeryType: 'Vasectomy',
      surgeryVenue: 'Arcadia OP Theater 4',
      description: 'Lorem ipsum manai',
    ),
    Surgery(
      doctorName: 'Matthew Blythe',
      surgeryDate: '2023-05-12',
      surgeryType: 'Vasectomy',
      surgeryVenue: 'Arcadia OP Theater 4',
      description: 'Lorem ipsum manai',
    ),
  ];

  List<Surgery> filteredDataList = [];

  @override
  void initState() {
    super.initState();
    // At the beginning, show all the data
    filteredDataList = surgery;
  }

  void _filterData(String searchQuery) {
    List<Surgery> filteredList = [];
    if (searchQuery.isNotEmpty) {
      // Filter the data based on the search query
      filteredList = surgery
          .where((surgery) =>
          surgery.doctorName!.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    } else {
      // If the search query is empty, show all the data
      filteredList = surgery;
    }
    setState(() {
      filteredDataList = filteredList;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //search bar
            SizedBox(
              height: 80,
              child: //search bar
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value){
                      _filterData(value);
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        alignLabelWithHint: true,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0) ,
                          borderSide: BorderSide(width: 0.8),
                        ),
                        hintText: 'search by doctor name',
                        suffixIcon: IconButton(icon: Icon(Icons.search, size: 28.0,), onPressed:(){} ,)

                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 600,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                shrinkWrap: true,
                itemCount: filteredDataList.length,
                itemBuilder: (context, index){
                  Surgery surgery = filteredDataList[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ViewComponent(
                        doctorName: surgery.doctorName,
                        surgeryDate: surgery.surgeryDate,
                        surgeryType: surgery.surgeryType,
                        surgeryVenue: surgery.surgeryVenue,
                        description: surgery.description,
                      ),

                      SizedBox(height: 10,),
                    ],
                  );

                },

              ),
            ),

          ],
        ),
      ),
    );
  }
}

class Surgery{
  final String? doctorName;
  final String? surgeryDate;
  final String? surgeryType;
  final String? surgeryVenue;
  final String? description;

  Surgery({
    this.doctorName,
    this.surgeryDate,
    this.surgeryType,
    this.surgeryVenue,
    this.description,
});

}