// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/bookcar.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/moreInfor.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/viewbookings.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/carRentals/carscard.dart';
// import 'package:flutter/material.dart';
//
// import '../components/bottomnavigationbar.dart';
// import '../components/drawercomponent.dart';
// //import 'package:flutter_map/flutter_map.dart';
// //import 'package:latlong2/latlong.dart' as latlong;
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:bluefountain_superapp_frontend_mobile_flutter/locations.dart' as locations;
//
//
//
//
//
// class MyMap extends StatefulWidget {
//   const MyMap({super.key});
//
//   @override
//   State<MyMap> createState() => _MyMapState();
// }
//
// class _MyMapState extends State<MyMap> {
//   final Map<String, Marker> _markers = {};
//   Future<void> _onMapCreated(GoogleMapController controller) async {
//     final googleOffices = await locations.getGoogleOffices();
//     setState(() {
//       _markers.clear();
//       for (final office in googleOffices.offices) {
//         final marker = Marker(
//           markerId: MarkerId(office.name),
//           position: LatLng(office.lat, office.lng),
//           infoWindow: InfoWindow(
//             title: office.name,
//             snippet: office.address,
//           ),
//         );
//         _markers[office.name] = marker;
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         appBar: AppBar(
//           title: const Text('Google Office Locations'),
//           elevation: 2,
//         ),
//         body: GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: const CameraPosition(
//             target: LatLng(0, 0),
//             zoom: 2,
//           ),
//           markers: _markers.values.toSet(),
//         ),
//
//     );
//   }
// }
