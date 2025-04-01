// import 'package:flutter/material.dart';
// import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
//
//
//
// class CalendarComponent extends StatefulWidget{
//   const CalendarComponent({Key ? key}): super(key : key);
//
//   State<CalendarComponent> createState() => _CalendarComponentState();
// }
//
// class _CalendarComponentState extends State<CalendarComponent>{
//   // DateTime? selectedDay;
//   // List <CleanCalendarEvent>? selectedEvent;
//   //
//   // final Map<DateTime,List<CleanCalendarEvent>> events = {
//   //   DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day - 4):
//   //   [
//   //     CleanCalendarEvent(
//   //       'Dental Appointment',
//   //       startTime: DateTime(
//   //           DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
//   //       endTime:  DateTime(
//   //           DateTime.now().year,DateTime.now().month,DateTime.now().day,12,0),
//   //       description: 'Gum checking ',
//   //       color: Colors.greenAccent.withOpacity(0.12),
//   //     ),
//   //   ],
//   //
//   //
//   //   DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day):
//   //   [
//   //     CleanCalendarEvent(
//   //       'Surgery',
//   //         startTime: DateTime(
//   //             DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
//   //         endTime:  DateTime(
//   //             DateTime.now().year,DateTime.now().month,DateTime.now().day,12,0),
//   //         description: 'Colon Surgery',
//   //         color: Colors.greenAccent.withOpacity(0.12),
//   //     ),
//   //   ],
//   //
//   //   DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
//   //   [
//   //     CleanCalendarEvent(
//   //       'Lab Test',
//   //         startTime: DateTime(DateTime.now().year, DateTime.now().month,
//   //             DateTime.now().day + 2, 10, 0),
//   //         endTime: DateTime(DateTime.now().year, DateTime.now().month,
//   //             DateTime.now().day + 2, 12, 0),
//   //         color: Colors.deepPurpleAccent.withOpacity(0.12),
//   //         description: 'Acne Lab Test',
//   //
//   //     ),
//   //     CleanCalendarEvent(
//   //         'Appointment',
//   //         startTime: DateTime(DateTime.now().year, DateTime.now().month,
//   //             DateTime.now().day + 2, 14, 30),
//   //         endTime: DateTime(DateTime.now().year, DateTime.now().month,
//   //             DateTime.now().day + 2, 17, 0),
//   //         color: Colors.redAccent.withOpacity(0.12),
//   //         description: 'Doctor\'s Appointment'
//   //     ),
//   //   ],
//   //
//   //   DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day + 16):
//   //   [
//   //     CleanCalendarEvent(
//   //       'Surgery',
//   //       startTime: DateTime(
//   //           DateTime.now().year,DateTime.now().month,DateTime.now().day,13,0),
//   //       endTime:  DateTime(
//   //           DateTime.now().year,DateTime.now().month,DateTime.now().day,15,0),
//   //       description: 'Colonoscopy',
//   //       color: Colors.greenAccent.withOpacity(0.12),
//   //     ),
//   //   ],
//   //
//   //   DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day + 28):
//   //   [
//   //     CleanCalendarEvent(
//   //       'Check Up',
//   //       startTime: DateTime(
//   //           DateTime.now().year,DateTime.now().month,DateTime.now().day,13,0),
//   //       endTime:  DateTime(
//   //           DateTime.now().year,DateTime.now().month,DateTime.now().day,15,0),
//   //       description: 'Medical Check Up With Doctor Natasha',
//   //       color: Colors.greenAccent.withOpacity(0.12),
//   //     ),
//   //   ],
//   //
//   // };
//   //
//   // void _handleData(date){
//   //   setState(() {
//   //     selectedDay = date;
//   //     selectedEvent = events[selectedDay] ?? [];
//   //   });
//   //   print(selectedDay);
//   // }
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   selectedEvent = events[selectedDay] ?? [];
//   //   super.initState();
//   // }
//
//
//
//   @override
//   Widget build(BuildContext context){
//     return Center(child: Text ("Calender"));
//     //   Container(
//     //   padding: EdgeInsets.all(8.0),
//     //   child:  Calendar(
//     //     startOnMonday: true,
//     //     selectedColor: Colors.blueAccent,
//     //     todayColor: Colors.blue,
//     //     eventColor: Colors.green,
//     //     eventDoneColor: Colors.amber,
//     //     bottomBarColor: Colors.purple,
//     //     onRangeSelected: (range) {
//     //       print('selected Day ${range.from},${range.to}');
//     //     },
//     //     onDateSelected: (date){
//     //       return _handleData(date);
//     //     },
//     //     events: events,
//     //     isExpanded: true,
//     //     dayOfWeekStyle: TextStyle(
//     //       fontSize: 15,
//     //       color: Colors.black,
//     //       fontWeight: FontWeight.bold,
//     //     ),
//     //     bottomBarTextStyle: TextStyle(
//     //       color: Colors.white,
//     //     ),
//     //     hideBottomBar: false,
//     //     hideArrows: false,
//     //     weekDays: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
//     //
//     //   ),
//     // );
//   }
// }