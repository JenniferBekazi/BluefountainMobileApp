// To parse this JSON data, do
//
//     final appointmentModel = appointmentModelFromJson(jsonString);

import 'dart:convert';

List<AppointmentModel> appointmentModelFromJson(String str) => List<AppointmentModel>.from(json.decode(str).map((x) => AppointmentModel.fromJson(x)));

String appointmentModelToJson(List<AppointmentModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AppointmentModel {
  String id;
  String phoneNumber;
  String patientId;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  String email;
  String gender;
  String nationalId;
  String appliedService;
  String department;
  String procedure;
  DateTime preferredAppointmentDate;
  String preferredAppointmentTime;
  String appointmentid;
  String preferredDoctor;
  String serviceProvider;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String? cancellationReason;
  String? details;
  String? doctorEmail;
  String? doctorName;
  String? doctorid;
  String? appointmentModelId;
  String? diability;
  String? communication;
  String? sensoryProcessing;
  String? cognitiveDisability;
  String? streetAddress;
  String? streetAddressLine2;
  String? city;
  String? state;
  String? postalZipcode;

  AppointmentModel({
    required this.id,
    required this.phoneNumber,
    required this.patientId,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.email,
    required this.gender,
    required this.nationalId,
    required this.appliedService,
    required this.department,
    required this.procedure,
    required this.preferredAppointmentDate,
    required this.preferredAppointmentTime,
    required this.appointmentid,
    required this.preferredDoctor,
    required this.serviceProvider,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    this.cancellationReason,
    this.details,
    this.doctorEmail,
    this.doctorName,
    this.doctorid,
    this.appointmentModelId,
    this.diability,
    this.communication,
    this.sensoryProcessing,
    this.cognitiveDisability,
    this.streetAddress,
    this.streetAddressLine2,
    this.city,
    this.state,
    this.postalZipcode,
  });

  factory AppointmentModel.fromJson(Map<String, dynamic> json) => AppointmentModel(
    id: json["_id"],
    phoneNumber: json["phone_number"],
    patientId: json["patient_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    email: json["email"],
    gender: json["gender"],
    nationalId: json["national_id"],
    appliedService: json["applied_service"],
    department: json["department"],
    procedure: json["procedure"],
    preferredAppointmentDate: DateTime.parse(json["preferred_appointment_date"]),
    preferredAppointmentTime: json["preferred_appointment_time"],
    appointmentid: json["appointmentid"],
    preferredDoctor: json["preferredDoctor"],
    serviceProvider: json["service_provider"],
    status: json["status"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    cancellationReason: json["cancellation_reason"],
    details: json["details"],
    doctorEmail: json["doctorEmail"],
    doctorName: json["doctorName"],
    doctorid: json["doctorid"],
    appointmentModelId: json["id"],
    diability: json["diability"],
    communication: json["communication"],
    sensoryProcessing: json["sensory_processing"],
    cognitiveDisability: json["cognitive_disability"],
    streetAddress: json["street_address"],
    streetAddressLine2: json["street_address_line2"],
    city: json["city"],
    state: json["state"],
    postalZipcode: json["postal_zipcode"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "phone_number": phoneNumber,
    "patient_id": patientId,
    "first_name": firstName,
    "last_name": lastName,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "email": email,
    "gender": gender,
    "national_id": nationalId,
    "applied_service": appliedService,
    "department": department,
    "procedure": procedure,
    "preferred_appointment_date": "${preferredAppointmentDate.year.toString().padLeft(4, '0')}-${preferredAppointmentDate.month.toString().padLeft(2, '0')}-${preferredAppointmentDate.day.toString().padLeft(2, '0')}",
    "preferred_appointment_time": preferredAppointmentTime,
    "appointmentid": appointmentid,
    "preferredDoctor": preferredDoctor,
    "service_provider": serviceProvider,
    "status": status,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
    "cancellation_reason": cancellationReason,
    "details": details,
    "doctorEmail": doctorEmail,
    "doctorName": doctorName,
    "doctorid": doctorid,
    "id": appointmentModelId,
    "diability": diability,
    "communication": communication,
    "sensory_processing": sensoryProcessing,
    "cognitive_disability": cognitiveDisability,
    "street_address": streetAddress,
    "street_address_line2": streetAddressLine2,
    "city": city,
    "state": state,
    "postal_zipcode": postalZipcode,
  };
}
