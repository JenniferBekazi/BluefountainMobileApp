import 'dart:convert';
import 'package:http/http.dart' as http;

class EmailService{
  Future<void> sendEmail(String recipient, String id,String service, String department, String procedure, String date, String time, String? doctor) async {
    var url = Uri.parse('http://192.168.8.112:8080/sendEmail/email?recipient=${recipient}&body=Email test&subject=Booking Confirmation');

    try{
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "id": id,
          "appliedService": service,
          "department": department,
          "procedure": procedure,
          "preferredAppointmentDate": date,
          "preferredAppointmentTime": time,
          "preferredDoctor": doctor
        }),
      );
      if(response.statusCode == 200){
        print('Email sent successfully');
      }else{
        print('Email sending failed with status code ${response.statusCode}');
      }

    }catch (e){
      print(e.toString());
    }

  }
}