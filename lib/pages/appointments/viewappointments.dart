import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:http/http.dart' as http;



import '../doctors/doctorservices/bloc2/posts_bloc2.dart';
import '../doctors/doctorservices/bookings_model.dart';
import '../profile.dart';
import '../components/bottomnavigationbar.dart';
import 'components/viewappointments/viewcomponent.dart';


class ViewAppointments extends StatefulWidget{
  final List<BookingsModel> bookings;
  ViewAppointments({required this.bookings, String? firstName, String? id, String? procedure});


  State<ViewAppointments> createState() => _ViewAppointmentsState();

}

class _ViewAppointmentsState extends State<ViewAppointments> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  final PostsBloc postsBloc = PostsBloc();

  @override
  void initState() {
    postsBloc.add(PostsInitialFetchEvent());
    super.initState();
    _tabController = TabController(length: 3, vsync: this, );

  }

  //api calls
  Future<void>? getappointments() async{
    final url = Uri.parse("http://20.164.214.226:3060/mongo/bookings/getBookingsByEmail?email=mabuzajennifer@yahoo.com");

    try{
      final response = await http.get(url);

     if(response.statusCode == 201){
       final data = jsonDecode(response.body);
       print(data);
     }
    }catch (e){
      print(e.toString());
    }

  }

  //build tabs
  Widget _buildUpcoming({required List<BookingsModel> bookings,}) => Padding(
    padding: const EdgeInsets.all(15.0),
    child: ListView(

      children: [

        Column( children:bookings.map(
              (book) => Slidable(

                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [

                    Divider(
                      color: Colors.grey[80],
                      height: 3,
                      thickness: 2,
                    ),

                    SlidableAction(
                      icon: Icons.remove_red_eye_outlined,
                      backgroundColor: Colors.blueAccent,
                      label: 'View',
                      onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(bookingsModel: book, firstName: '', lastName: '', doctorName: '', department: '', procedure: '', time: '', service: '', date: '', appointmentid: '',))),
                    ),

                    SlidableAction(
                      icon: Icons.cancel_sharp,
                      backgroundColor: Colors.redAccent,
                      label: 'Cancel',
                      onPressed: (context) => print('cancel'),
                    ),


                    Divider(
                      color: Colors.grey[80],
                      height: 3,
                      thickness: 2,
                    ),
  SizedBox(
  height: 20,
  ),
                    SizedBox(height: 2,),

                    Divider(
                      color: Colors.grey[80],
                      height: 3,
                      thickness: 2,
                    ),
                  ],
                ),


                child: ListTile(

                leading: Icon(Icons.person),

                  title:
                  Text('Drs name : '
                    '${book.doctorName}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),


                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                  Text(
                    "PatientID :" "${book.bookingsModelId}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                  ),),
                  Text("Procedure :" "${book.procedure}",
                  style: TextStyle(
                       fontWeight: FontWeight.w600,
                       fontSize: 12,
                      ),),
                      SizedBox(height: 4,),
                      Divider(
                        color: Colors.grey[80],
                        height: 3,
                        thickness: 2,
                      ),

                  ],),



                  // title: Text('${book.id},${book.gender},${book.firstName},${book.procedure}'),

                ),
              ),
        ).toList(),),

        SizedBox(height: 2,),

        // Divider(
        //   color: Colors.grey[80],
        //   height: 3,
        //   thickness: 2,
        // ),





      ],
    ),
  );

  Widget _buildPending() => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              // SlidableAction(
              //   icon: Icons.remove_red_eye_outlined,
              //   backgroundColor: Colors.blueAccent,
              //   label: 'View',
              //   onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(firstname: "Gojo", lastname: "Satoru",  department: "Radiology", date: "01-12-2023", time: "16:00", doctor: "Doctor Blythe"))),
              // ),

              SlidableAction(
                icon: Icons.cancel_sharp,
                backgroundColor: Colors.redAccent,
                label: 'Cancel',
                onPressed: (context) => print('cancel'),
              ),
            ],
          ),
          child: ListTile(
            title: Text('Mammogram with Dr Law on 01-12-2023 at 16:00'),
          ),
        ),

        SizedBox(height: 2,),

        Divider(
          color: Colors.grey[80],
          height: 3,
          thickness: 2,
        ),

        SizedBox(height: 2,),

        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              // SlidableAction(
              //   icon: Icons.remove_red_eye_outlined,
              //   backgroundColor: Colors.blueAccent,
              //   label: 'View',
              //   onPressed: (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewComponent(firstname: "Brian", lastname: "Mashavakure",  department: "Dermatology", date: "17-09-2023", time: "15:00", doctor: "Doctor Dazai"))),
              // ),

              SlidableAction(
                icon: Icons.cancel_sharp,
                backgroundColor: Colors.redAccent,
                label: 'Cancel',
                onPressed: (context) => print('cancel'),
              ),
            ],
          ),
          child: ListTile(
            title: Text('Goitre treatment checkup on 17-09-2023 at 15:00'),
          ),
        ),



      ],
    ),
  );

  Widget _buildCanceled() => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Slidable(
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                icon: Icons.remove_red_eye_outlined,
                backgroundColor: Colors.blueAccent,
                label: 'View',
                onPressed: (context) => print('view'),
              ),

              SlidableAction(
                icon: Icons.delete_forever,
                backgroundColor: Colors.redAccent,
                label: 'Delete',
                onPressed: (context) => print('delete'),
              ),
            ],
          ),
          child: ListTile(
            title: Text('Dermatology session on 02-05-2023 at 07:00'),
          ),
        ),

      ],
    ),
  );


  @override
  Widget build(BuildContext context,){
    final List<BookingsModel> bookings;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('View Bookings'),
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
            bottom: TabBar(

              tabs: [
                //upcoming tab
                Tab(
                  icon: Icon(Icons.playlist_add, color: Colors.lightGreenAccent,),
                  text: 'All bookings',

                ),


                //pending tab
                Tab(
                  icon: Icon(Icons.remove_red_eye_rounded, color: Colors.lightBlueAccent,),
                  text: 'Pending',
                ),

                //cancelled tab
                Tab(
                  icon: Icon(Icons.cancel_outlined, color: Colors.redAccent,),
                  text: 'Canceled',
                ),
              ],
            ),
          ),
          body: BlocConsumer<PostsBloc, PostsState>(
    bloc: postsBloc,
    listenWhen: (previous, current) => current is PostActionState,
    buildWhen: ((previous, current) => current is! PostActionState),
    listener: (context, state) {
    // TODO: implement listener
    },
    builder: (context, state) {
      switch (state.runtimeType) {
        case PostfetchingLoadingState:
          return const Center(
            child: CircularProgressIndicator(),
          );
        case PostFetchingSuccessfulState:
          final successState = state as PostFetchingSuccessfulState;

          final List<BookingsModel> bookingsList = successState.posts;

          return TabBarView(
            controller: _tabController,
            children: [



              _buildUpcoming(bookings: bookingsList,),

              _buildPending(),

              _buildCanceled(),

            ],


          );
        default:
          return const SizedBox();

      }
    },
    ),
    bottomNavigationBar: NavBar(),

      ),
    ),
    );
  }
}