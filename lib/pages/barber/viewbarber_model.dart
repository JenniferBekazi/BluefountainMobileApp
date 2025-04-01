// To parse this JSON data, do
//
//     final barbersModel = barbersModelFromMap(jsonString);

import 'dart:convert';

List<BarbersModel> barbersModelFromMap(String str) => List<BarbersModel>.from(json.decode(str).map((x) => BarbersModel.fromMap(x)));

String barbersModelToMap(List<BarbersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class BarbersModel {
  String id;
  int index;
  String nationalId;
  String status;
  String price;
  String age;
  String beared;
  String hairstyle;
  String title;
  String name;
  String surname;
  String gender;
  String company;
  String email;
  String date;
  String phonenumber;
  String streetAddress1;
  String time;
  String zipCode;

  BarbersModel({
    required this.id,
    required this.index,
    required this.nationalId,
    required this.status,
    required this.price,
    required this.age,
    required this.beared,
    required this.hairstyle,
    required this.title,
    required this.name,
    required this.surname,
    required this.gender,
    required this.company,
    required this.email,
    required this.date,
    required this.phonenumber,
    required this.streetAddress1,
    required this.time,
    required this.zipCode,
  });

  factory BarbersModel.fromMap(Map<String, dynamic> json) => BarbersModel(
    id: json["_id"],
    index: json["index"],
    nationalId: json["nationalID"],
    status: json["status"],
    price: json["Price"],
    age: json["age"],
    beared: json["beared"],
    hairstyle: json["hairstyle"],
    title: json["title"],
    name: json["name"],
    surname: json["surname"],
    gender: json["gender"],
    company: json["company"],
    email: json["email"],
    date: json["date"],
    phonenumber: json["phonenumber"],
    streetAddress1: json["streetAddress1"],
    time: json["time"],
    zipCode: json["zipCode"],
  );

  Map<String, dynamic> toMap() => {
    "_id": id,
    "index": index,
    "nationalID": nationalId,
    "status": status,
    "Price": price,
    "age": age,
    "beared": beared,
    "hairstyle": hairstyle,
    "title": title,
    "name": name,
    "surname": surname,
    "gender": gender,
    "company": company,
    "email": email,
    "date": date,
    "phonenumber": phonenumber,
    "streetAddress1": streetAddress1,
    "time": time,
    "zipCode": zipCode,
  };
}
