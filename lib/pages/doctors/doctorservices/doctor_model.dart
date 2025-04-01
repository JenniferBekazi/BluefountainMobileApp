// To parse this JSON data, do
//
//     final doctorsModel = doctorsModelFromMap(jsonString);

import 'dart:convert';

List<DoctorsModel> doctorsModelFromMap(String str) => List<DoctorsModel>.from(json.decode(str).map((x) => DoctorsModel.fromMap(x)));

String doctorsModelToMap(List<DoctorsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DoctorsModel {
  String id;
  PersonalDetails personalDetails;
  ContactDetails contactDetails;
  IdentityDetails identityDetails;
  SpecialtyDetails specialtyDetails;
  QualificationsDetails qualificationsDetails;
  dynamic experienceDetails;
  dynamic documents;
  List<dynamic> doctorBookingSlots;
  List<dynamic> communications;
  String createdAt;
  String updatedAt;
  int v;
  List<AmmendmentHistory>? ammendmentHistory;

  DoctorsModel({
    required this.id,
    required this.personalDetails,
    required this.contactDetails,
    required this.identityDetails,
    required this.specialtyDetails,
    required this.qualificationsDetails,
    required this.experienceDetails,
    required this.documents,
    required this.doctorBookingSlots,
    required this.communications,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    this.ammendmentHistory,
  });

  factory DoctorsModel.fromMap(Map<String, dynamic> json) => DoctorsModel(
    id: json["_id"],
    personalDetails: PersonalDetails.fromMap(json["personal-details"]),
    contactDetails: ContactDetails.fromMap(json["contact-details"]),
    identityDetails: IdentityDetails.fromMap(json["identity-details"]),
    specialtyDetails: SpecialtyDetails.fromMap(json["specialty-details"]),
    qualificationsDetails: QualificationsDetails.fromMap(json["qualifications-details"]),
    experienceDetails: json["experience-details"],
    documents: json["documents"],
    doctorBookingSlots: List<dynamic>.from(json["doctor-booking-slots"].map((x) => x)),
    communications: List<dynamic>.from(json["communications"].map((x) => x)),
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    v: json["__v"],
    ammendmentHistory: json["ammendmentHistory"] == null ? [] : List<AmmendmentHistory>.from(json["ammendmentHistory"]!.map((x) => AmmendmentHistory.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "_id": id,
    "personal-details": personalDetails.toMap(),
    "contact-details": contactDetails.toMap(),
    "identity-details": identityDetails.toMap(),
    "specialty-details": specialtyDetails.toMap(),
    "qualifications-details": qualificationsDetails.toMap(),
    "experience-details": experienceDetails,
    "documents": documents,
    "doctor-booking-slots": List<dynamic>.from(doctorBookingSlots.map((x) => x)),
    "communications": List<dynamic>.from(communications.map((x) => x)),
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "__v": v,
    "ammendmentHistory": ammendmentHistory == null ? [] : List<dynamic>.from(ammendmentHistory!.map((x) => x.toMap())),
  };
}

class AmmendmentHistory {
  String ammmendmentType;
  DateTime ammendmentDate;
  String? prevPhoneNumber;
  dynamic prevAddress;
  String? prevEmail;

  AmmendmentHistory({
    required this.ammmendmentType,
    required this.ammendmentDate,
    this.prevPhoneNumber,
    this.prevAddress,
    this.prevEmail,
  });

  factory AmmendmentHistory.fromMap(Map<String, dynamic> json) => AmmendmentHistory(
    ammmendmentType: json["ammmendmentType"],
    ammendmentDate: DateTime.parse(json["ammendmentDate"]),
    prevPhoneNumber: json["prevPhoneNumber"],
    prevAddress: json["prevAddress"],
    prevEmail: json["prevEmail"],
  );

  Map<String, dynamic> toMap() => {
    "ammmendmentType": ammmendmentType,
    "ammendmentDate": "${ammendmentDate.year.toString().padLeft(4, '0')}-${ammendmentDate.month.toString().padLeft(2, '0')}-${ammendmentDate.day.toString().padLeft(2, '0')}",
    "prevPhoneNumber": prevPhoneNumber,
    "prevAddress": prevAddress,
    "prevEmail": prevEmail,
  };
}

class PrevAddressClass {
  String region;
  String streetAddress;
  String city;
  String country;
  DateTime startDate;
  String zip;

  PrevAddressClass({
    required this.region,
    required this.streetAddress,
    required this.city,
    required this.country,
    required this.startDate,
    required this.zip,
  });

  factory PrevAddressClass.fromMap(Map<String, dynamic> json) => PrevAddressClass(
    region: json["region"],
    streetAddress: json["street_address"],
    city: json["city"],
    country: json["country"],
    startDate: DateTime.parse(json["start_date"]),
    zip: json["zip"],
  );

  Map<String, dynamic> toMap() => {
    "region": region,
    "street_address": streetAddress,
    "city": city,
    "country": country,
    "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "zip": zip,
  };
}

class ContactDetails {
  String preferredMethodOfCommunication;
  List<EmailAddress> emailAddresses;
  List<PhoneNumber> phoneNumbers;
  List<AddressDetail> addressDetails;
  List<AddressDetail>? addressDetailsValue;

  ContactDetails({
    required this.preferredMethodOfCommunication,
    required this.emailAddresses,
    required this.phoneNumbers,
    required this.addressDetails,
    this.addressDetailsValue,
  });

  factory ContactDetails.fromMap(Map<String, dynamic> json) => ContactDetails(
    preferredMethodOfCommunication: json["preferred-method-of-communication"],
    emailAddresses: List<EmailAddress>.from(json["email-addresses"].map((x) => EmailAddress.fromMap(x))),
    phoneNumbers: List<PhoneNumber>.from(json["phone-numbers"].map((x) => PhoneNumber.fromMap(x))),
    addressDetails: List<AddressDetail>.from(json["address-details"].map((x) => AddressDetail.fromMap(x))),
    addressDetailsValue: json["address_details_value"] == null ? [] : List<AddressDetail>.from(json["address_details_value"]!.map((x) => AddressDetail.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "preferred-method-of-communication": preferredMethodOfCommunication,
    "email-addresses": List<dynamic>.from(emailAddresses.map((x) => x.toMap())),
    "phone-numbers": List<dynamic>.from(phoneNumbers.map((x) => x.toMap())),
    "address-details": List<dynamic>.from(addressDetails.map((x) => x.toMap())),
    "address_details_value": addressDetailsValue == null ? [] : List<dynamic>.from(addressDetailsValue!.map((x) => x.toMap())),
  };
}

class AddressDetail {
  String region;
  String streetAddress;
  String city;
  String country;
  String? startDate;
  String zip;
  String? endDate;

  AddressDetail({
    required this.region,
    required this.streetAddress,
    required this.city,
    required this.country,
    this.startDate,
    required this.zip,
    this.endDate,
  });

  factory AddressDetail.fromMap(Map<String, dynamic> json) => AddressDetail(
    region: json["region"],
    streetAddress: json["street_address"],
    city: json["city"],
    country: json["country"],
    startDate: json["start_date"],
    zip: json["zip"],
    endDate: json["end_date"],
  );

  Map<String, dynamic> toMap() => {
    "region": region,
    "street_address": streetAddress,
    "city": city,
    "country": country,
    "start_date": startDate,
    "zip": zip,
    "end_date": endDate,
  };
}

class EmailAddress {
  String email;
  dynamic isDefaultEmail;

  EmailAddress({
    required this.email,
    required this.isDefaultEmail,
  });

  factory EmailAddress.fromMap(Map<String, dynamic> json) => EmailAddress(
    email: json["email"],
    isDefaultEmail: json["is_default_email"],
  );

  Map<String, dynamic> toMap() => {
    "email": email,
    "is_default_email": isDefaultEmail,
  };
}

class PhoneNumber {
  dynamic isDefaultNumber;
  String phoneNumber;

  PhoneNumber({
    required this.isDefaultNumber,
    required this.phoneNumber,
  });

  factory PhoneNumber.fromMap(Map<String, dynamic> json) => PhoneNumber(
    isDefaultNumber: json["is_default_number"],
    phoneNumber: json["phone_number"],
  );

  Map<String, dynamic> toMap() => {
    "is_default_number": isDefaultNumber,
    "phone_number": phoneNumber,
  };
}

class Document {
  String documentId;
  String documentName;
  String status;
  String documentType;
  String documentPath;
  String documentCriteria;

  Document({
    required this.documentId,
    required this.documentName,
    required this.status,
    required this.documentType,
    required this.documentPath,
    required this.documentCriteria,
  });

  factory Document.fromMap(Map<String, dynamic> json) => Document(
    documentId: json["document_id"],
    documentName: json["document_name"],
    status: json["status"],
    documentType: json["document_type"],
    documentPath: json["document_path"],
    documentCriteria: json["documentCriteria"],
  );

  Map<String, dynamic> toMap() => {
    "document_id": documentId,
    "document_name": documentName,
    "status": status,
    "document_type": documentType,
    "document_path": documentPath,
    "documentCriteria": documentCriteria,
  };
}

class ExperienceDetail {
  String organization;
  String position;
  String phoneNumber;
  String email;
  String telePhone;
  String street;
  String? zipCode;
  String startDate;
  String endDate;
  String city;
  String? region;
  String country;
  String? doctorid;

  ExperienceDetail({
    required this.organization,
    required this.position,
    required this.phoneNumber,
    required this.email,
    required this.telePhone,
    required this.street,
    this.zipCode,
    required this.startDate,
    required this.endDate,
    required this.city,
    this.region,
    required this.country,
    this.doctorid,
  });

  factory ExperienceDetail.fromMap(Map<String, dynamic> json) => ExperienceDetail(
    organization: json["organization"],
    position: json["position"],
    phoneNumber: json["phone-number"],
    email: json["email"],
    telePhone: json["tele-phone"],
    street: json["street"],
    zipCode: json["zip-code"],
    startDate: json["start-date"],
    endDate: json["end-date"],
    city: json["city"],
    region: json["region"],
    country: json["country"],
    doctorid: json["doctorid"],
  );

  Map<String, dynamic> toMap() => {
    "organization": organization,
    "position": position,
    "phone-number": phoneNumber,
    "email": email,
    "tele-phone": telePhone,
    "street": street,
    "zip-code": zipCode,
    "start-date": startDate,
    "end-date": endDate,
    "city": city,
    "region": region,
    "country": country,
    "doctorid": doctorid,
  };
}

class ExperienceDetailsClass {
  String udi;
  String organization;
  String position;
  String phoneNumber;
  String email;
  String telePhone;
  String street;
  String zipCode;
  DateTime startDate;
  DateTime endDate;
  String city;
  String region;
  String country;

  ExperienceDetailsClass({
    required this.udi,
    required this.organization,
    required this.position,
    required this.phoneNumber,
    required this.email,
    required this.telePhone,
    required this.street,
    required this.zipCode,
    required this.startDate,
    required this.endDate,
    required this.city,
    required this.region,
    required this.country,
  });

  factory ExperienceDetailsClass.fromMap(Map<String, dynamic> json) => ExperienceDetailsClass(
    udi: json["UDI"],
    organization: json["organization"],
    position: json["position"],
    phoneNumber: json["phone-number"],
    email: json["email"],
    telePhone: json["tele-phone"],
    street: json["street"],
    zipCode: json["zip-code"],
    startDate: DateTime.parse(json["start-date"]),
    endDate: DateTime.parse(json["end-date"]),
    city: json["city"],
    region: json["region"],
    country: json["country"],
  );

  Map<String, dynamic> toMap() => {
    "UDI": udi,
    "organization": organization,
    "position": position,
    "phone-number": phoneNumber,
    "email": email,
    "tele-phone": telePhone,
    "street": street,
    "zip-code": zipCode,
    "start-date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "end-date": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
    "city": city,
    "region": region,
    "country": country,
  };
}

class IdentityDetails {
  String identificationType;
  NationalIdDetails nationalIdDetails;
  PassportDetails passportDetails;
  Keycloak keycloak;

  IdentityDetails({
    required this.identificationType,
    required this.nationalIdDetails,
    required this.passportDetails,
    required this.keycloak,
  });

  factory IdentityDetails.fromMap(Map<String, dynamic> json) => IdentityDetails(
    identificationType: json["identification-type"],
    nationalIdDetails: NationalIdDetails.fromMap(json["national-id-details"]),
    passportDetails: PassportDetails.fromMap(json["passport-details"]),
    keycloak: Keycloak.fromMap(json["keycloak"]),
  );

  Map<String, dynamic> toMap() => {
    "identification-type": identificationType,
    "national-id-details": nationalIdDetails.toMap(),
    "passport-details": passportDetails.toMap(),
    "keycloak": keycloak.toMap(),
  };
}

class Keycloak {
  String departmentName;
  String departmentId;

  Keycloak({
    required this.departmentName,
    required this.departmentId,
  });

  factory Keycloak.fromMap(Map<String, dynamic> json) => Keycloak(
    departmentName: json["departmentName"],
    departmentId: json["departmentId"],
  );

  Map<String, dynamic> toMap() => {
    "departmentName": departmentName,
    "departmentId": departmentId,
  };
}

class NationalIdDetails {
  String nationalIdNumber;
  String countryIdIssued;
  String issuedDate;

  NationalIdDetails({
    required this.nationalIdNumber,
    required this.countryIdIssued,
    required this.issuedDate,
  });

  factory NationalIdDetails.fromMap(Map<String, dynamic> json) => NationalIdDetails(
    nationalIdNumber: json["national-id-number"],
    countryIdIssued: json["country-id-issued"],
    issuedDate: json["issued-date"],
  );

  Map<String, dynamic> toMap() => {
    "national-id-number": nationalIdNumber,
    "country-id-issued": countryIdIssued,
    "issued-date": issuedDate,
  };
}

class PassportDetails {
  String passportNumber;
  String countryPassportIssued;
  String issuedDate;
  String expirationDate;
  String residentStatus;

  PassportDetails({
    required this.passportNumber,
    required this.countryPassportIssued,
    required this.issuedDate,
    required this.expirationDate,
    required this.residentStatus,
  });

  factory PassportDetails.fromMap(Map<String, dynamic> json) => PassportDetails(
    passportNumber: json["passport-number"],
    countryPassportIssued: json["country-passport-issued"],
    issuedDate: json["issued-date"],
    expirationDate: json["expiration-date"],
    residentStatus: json["resident-status"],
  );

  Map<String, dynamic> toMap() => {
    "passport-number": passportNumber,
    "country-passport-issued": countryPassportIssued,
    "issued-date": issuedDate,
    "expiration-date": expirationDate,
    "resident-status": residentStatus,
  };
}

class PersonalDetails {
  String id;
  String firstName;
  String lastName;
  DateTime registrationDate;
  String identificationType;
  String nationalId;
  DateTime dateOfBirth;
  String title;
  String maritalStatus;
  String gender;
  String documents;

  PersonalDetails({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.registrationDate,
    required this.identificationType,
    required this.nationalId,
    required this.dateOfBirth,
    required this.title,
    required this.maritalStatus,
    required this.gender,
    required this.documents,
  });

  factory PersonalDetails.fromMap(Map<String, dynamic> json) => PersonalDetails(
    id: json["id"],
    firstName: json["first-name"],
    lastName: json["last-name"],
    registrationDate: DateTime.parse(json["registration-date"]),
    identificationType: json["identification-type"],
    nationalId: json["national-id"],
    dateOfBirth: DateTime.parse(json["date-of-birth"]),
    title: json["title"],
    maritalStatus: json["marital-status"],
    gender: json["gender"],
    documents: json["documents"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "first-name": firstName,
    "last-name": lastName,
    "registration-date": "${registrationDate.year.toString().padLeft(4, '0')}-${registrationDate.month.toString().padLeft(2, '0')}-${registrationDate.day.toString().padLeft(2, '0')}",
    "identification-type": identificationType,
    "national-id": nationalId,
    "date-of-birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "title": title,
    "marital-status": maritalStatus,
    "gender": gender,
    "documents": documents,
  };
}

class QualificationsDetails {
  List<MemberAssociation> memberAssociations;
  List<Qualification> qualifications;

  QualificationsDetails({
    required this.memberAssociations,
    required this.qualifications,
  });

  factory QualificationsDetails.fromMap(Map<String, dynamic> json) => QualificationsDetails(
    memberAssociations: List<MemberAssociation>.from(json["member-associations"].map((x) => MemberAssociation.fromMap(x))),
    qualifications: List<Qualification>.from(json["qualifications"].map((x) => Qualification.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "member-associations": List<dynamic>.from(memberAssociations.map((x) => x.toMap())),
    "qualifications": List<dynamic>.from(qualifications.map((x) => x.toMap())),
  };
}

class MemberAssociation {
  String association;
  String certification;
  DateTime date;
  String dateOfExpiry;

  MemberAssociation({
    required this.association,
    required this.certification,
    required this.date,
    required this.dateOfExpiry,
  });

  factory MemberAssociation.fromMap(Map<String, dynamic> json) => MemberAssociation(
    association: json["association"],
    certification: json["certification"],
    date: DateTime.parse(json["date"]),
    dateOfExpiry: json["dateOfExpiry"],
  );

  Map<String, dynamic> toMap() => {
    "association": association,
    "certification": certification,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "dateOfExpiry": dateOfExpiry,
  };
}

class Qualification {
  String institution;
  String qualification;
  String date;

  Qualification({
    required this.institution,
    required this.qualification,
    required this.date,
  });

  factory Qualification.fromMap(Map<String, dynamic> json) => Qualification(
    institution: json["institution"],
    qualification: json["qualification"],
    date: json["date"],
  );

  Map<String, dynamic> toMap() => {
    "institution": institution,
    "qualification": qualification,
    "date": date,
  };
}

class SpecialtyDetails {
  String doctorId;
  String doctorType;
  String? practiceNumber;
  List<String> location;
  List<String> specialization;
  List<String> services;
  String descriptionSpecialization;

  SpecialtyDetails({
    required this.doctorId,
    required this.doctorType,
    this.practiceNumber,
    required this.location,
    required this.specialization,
    required this.services,
    required this.descriptionSpecialization,
  });

  factory SpecialtyDetails.fromMap(Map<String, dynamic> json) => SpecialtyDetails(
    doctorId: json["doctor-id"],
    doctorType: json["doctor-type"],
    practiceNumber: json["practiceNumber"],
    location: List<String>.from(json["location"].map((x) => x)),
    specialization: List<String>.from(json["specialization"].map((x) => x)),
    services: List<String>.from(json["services"].map((x) => x)),
    descriptionSpecialization: json["description-specialization"],
  );

  Map<String, dynamic> toMap() => {
    "doctor-id": doctorId,
    "doctor-type": doctorType,
    "practiceNumber": practiceNumber,
    "location": List<dynamic>.from(location.map((x) => x)),
    "specialization": List<dynamic>.from(specialization.map((x) => x)),
    "services": List<dynamic>.from(services.map((x) => x)),
    "description-specialization": descriptionSpecialization,
  };
}
