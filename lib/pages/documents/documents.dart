import 'package:flutter/material.dart';

import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';
import '../profile.dart';
import 'components/documentcomponent.dart';
import 'components/uploadcomponent.dart';


class Documents extends StatefulWidget{
  const Documents({Key ? key}): super(key : key);

  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents>{
  //UPLOAD DOCUMENT DIALOG
  showUploadDialog(context) => showDialog(
    context: context,
    builder: (context) => UploadComponent(),
  );



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Doctor\'s Notes'),
        automaticallyImplyLeading: false,
        leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: (){
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu_sharp, color: Colors.white,)
              );
            }
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile())),
            icon: Icon(Icons.person),
          ),
        ],
      ),
        drawer: DrawerClass(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(11),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: Text(
                      'My Documents',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),


              SizedBox(
                height: 530,
                  child: SingleChildScrollView(
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        padding: EdgeInsets.all(8.0),
                        shrinkWrap: true,
                        children: [
                          DocumentComponent(
                            viewFunction: (){},
                            documentName: 'National ID',
                          ),

                          SizedBox(height: 10,),

                          DocumentComponent(
                            viewFunction: (){},
                            documentName: 'Passport',
                          ),

                          SizedBox(height: 10,),

                          DocumentComponent(
                            viewFunction: (){},
                            documentName: 'Driver\'s License',
                          ),
                        ],

                      )),
              ),

              SizedBox( height: 20,),

              ElevatedButton.icon(
                onPressed: () => showUploadDialog(context),
                icon: Icon(Icons.cloud_upload_sharp, size: 23,),
                label: Text('Upload Document'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  minimumSize: Size(300,50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  )
                ),
              ),



            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }

}