
// import 'package:flutter/material.dart';
//
// class Doctor {
//   final String id;
//   final String name;
//   final String specialty;
//
//   Doctor({
//     required this.id,
//     required this.name,
//     required this.specialty,
//   });
// }
//
// class BookAppointmentScreen extends StatefulWidget {
//   final Doctor doctor;
//
//   BookAppointmentScreen({required this.doctor});
//
//   @override
//   _BookAppointmentScreenState createState() => _BookAppointmentScreenState();
// }
//
// class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
//   DateTime selectedDate = DateTime.now();
//   TimeOfDay selectedTime = TimeOfDay.now();
//
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2101),
//     );
//     if (pickedDate != null) {
//       setState(() {
//         selectedDate = pickedDate;
//       });
//     }
//   }
//
//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: selectedTime,
//     );
//     if (pickedTime != null) {
//       setState(() {
//         selectedTime = pickedTime;
//       });
//     }
//   }
//
//   void _bookAppointment() {
//     // Add code to book the appointment in Firestore and update the doctor's schedule.
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Book Appointment'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             Text(widget.doctor.name),
//             Text('Select Date: ${selectedDate.toLocal()}'),
//             ElevatedButton(
//               onPressed: () => _selectDate(context),
//               child: Text('Select Date'),
//             ),
//             Text('Select Time: ${selectedTime.format(context)}'),
//             ElevatedButton(
//               onPressed: () => _selectTime(context),
//               child: Text('Select Time'),
//             ),
//             ElevatedButton(
//               onPressed: _bookAppointment,
//               child: Text('Book Appointment'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//}

import 'package:flutter/material.dart';

class Doctor {
  final String id;
  final String name;
  final String specialty;

  Doctor({
    required this.id,
    required this.name,
    required this.specialty,
  });
}

class BookAppointmentScreen extends StatefulWidget {
  final Doctor doctor;

  BookAppointmentScreen({required this.doctor});

  @override
  _BookAppointmentScreenState createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  void _bookAppointment() {
    // Add code to book the appointment in Firestore and update the doctor's schedule.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(widget.doctor.name),
            Text('Select Date: ${selectedDate.toLocal()}'),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select Date'),
            ),
            Text('Select Time: ${selectedTime.format(context)}'),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text('Select Time'),
            ),
            ElevatedButton(
              onPressed: _bookAppointment,
              child: Text('Book Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}

