import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/doctors/doctorservices/doctor_model.dart';
import 'package:flutter/material.dart';

import '../components/bottomnavigationbar.dart';
import '../components/drawercomponent.dart';
import '../profile.dart';
import 'doctorservices/bloc/posts_bloc.dart';
import 'tabs/pediatrics.dart';
import 'tabs/internal.dart';
import 'tabs/dermatology.dart';
import 'tabs/neurology.dart';
import 'tabs/radiology.dart';
import 'tabs/oncology.dart';
import 'tabs/cardiology.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Doctors extends StatefulWidget{
  const Doctors({Key ? key}): super(key : key);

  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors>  with SingleTickerProviderStateMixin{

  late TabController _tabController;
  final PostsBloc postsBloc = PostsBloc();

  @override
  void initState() {
    postsBloc.add(PostsInitialFetchEvent());
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Book A Doctor'),
        automaticallyImplyLeading: false,
        leading: Builder(
            builder: (context) {
              print("hi");
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
          controller: _tabController,
          physics: AlwaysScrollableScrollPhysics(),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              text: 'Pediatrics',
            ),

            Tab(
              text: 'Dermatology',
            ),

            Tab(
              text: 'Neurology',
            ),

            Tab(
              text: 'Radiology',
            ),

            Tab(
              text: 'Internal',
            ),

            Tab(
              text: 'Oncology',
            ),

            Tab(
              text: 'Cardiology',
            ),

          ],
        ),
      ),

      drawer: DrawerClass(),


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

              final List<DoctorsModel> doctorsList = successState.posts;

              return TabBarView(
          controller: _tabController,
          children: [
          //pediatrics tab
          PediatricsTab(doctors: doctorsList, bookings: [],),

          //internal tab
          InternalTab(),
          //dermatology tab
          DermatologyTab(),

          //neurology tab
          NeurologyTab(),


          //radiology tab
          RadiologyTab(),


          //oncology tab
          OncologyTab(),


          //cardiology tab
          CardiologyTab(),

          ],
          );


          default:
              return const SizedBox();
          }
        },
      ),




      bottomNavigationBar: NavBar(),
    );
  }
}