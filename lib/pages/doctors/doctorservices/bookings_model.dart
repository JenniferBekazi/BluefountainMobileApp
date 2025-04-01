// To parse this JSON data, do
//
//     final bookingsModel = bookingsModelFromMap(jsonString);

import 'dart:convert';

List<BookingsModel> bookingsModelFromMap(String str) => List<BookingsModel>.from(json.decode(str).map((x) => BookingsModel.fromMap(x)));

String bookingsModelToMap(List<BookingsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class BookingsModel {
  String id;
  String phoneNumber;
  String email;
  String firstName;
  String lastName;
  String gender;
  String nationalId;
  String department;
  List<dynamic> outcome;
  String procedure;
  String preferredAppointmentDate;
  String preferredAppointmentTime;
  String doctorName;
  String status;
  String bookingsModelId;
  String otherServices;
  String city;
  String state;
  String createdAt;
  String updatedAt;
  int v;

  BookingsModel({
    required this.id,
    required this.phoneNumber,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.nationalId,
    required this.department,
    required this.outcome,
    required this.procedure,
    required this.preferredAppointmentDate,
    required this.preferredAppointmentTime,
    required this.doctorName,
    required this.status,
    required this.bookingsModelId,
    required this.otherServices,
    required this.city,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory BookingsModel.fromMap(Map<String, dynamic> json) => BookingsModel(
    id: json["_id"],
    phoneNumber: json["phone_number"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    gender: json["gender"],
    nationalId: json["national_id"],
    department: json["department"],
    outcome: List<dynamic>.from(json["outcome"].map((x) => x)),
    procedure: json["procedure"],
    preferredAppointmentDate: json["preferred_appointment_date"],
    preferredAppointmentTime: json["preferred_appointment_time"],
    doctorName: json["doctorName"],
    status: json["status"],
    bookingsModelId: json["id"],
    otherServices: json["other_services"],
    city: json["city"],
    state: json["state"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    v: json["__v"],
  );

  Map<String, dynamic> toMap() => {
    "_id": id,
    "phone_number": phoneNumber,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "gender": gender,
    "national_id": nationalId,
    "department": department,
    "outcome": List<dynamic>.from(outcome.map((x) => x)),
    "procedure": procedure,
    "preferred_appointment_date": preferredAppointmentDate,
    "preferred_appointment_time": preferredAppointmentTime,
    "doctorName": doctorName,
    "status": status,
    "id": bookingsModelId,
    "other_services": otherServices,
    "city": city,
    "state": state,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "__v": v,
  };
}
