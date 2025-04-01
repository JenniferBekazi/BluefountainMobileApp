import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIservice {
  static Future fetchData() async {
    final response = await http.get(Uri.parse(
        "http://20.164.214.226:3060/mongo/bookings/getBookingsByEmail?email=panashebudzinike@gmail.com"));

    if (response.statusCode == 201) {
      // If the server returns a 200 OK response, parse the JSON
      final data = json.decode(response.body);
      return data;
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load data');
    }
  }
}