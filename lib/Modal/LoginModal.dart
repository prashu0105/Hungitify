// ignore_for_file: prefer_if_null_operators

class LoginModalData {
  LoginModalData({
    required this.status,
    required this.message,
    required this.data,
  });
  late final bool status;
  late final String message;
  late final List<Data> data;

  LoginModalData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.lname,
    required this.email,
    required this.phone,
    required this.companyname,
    required this.annualshipment,
    required this.country,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
    required this.roles,
    required this.profileimage,
    required this.docs,
    required this.status,
    required this.drivingLicence,
    required this.taxDocs,
    required this.aboutMe,
    required this.language,
    required this.type,
    required this.token,
  });
  late final int id;
  late final String name;
  late final String lname;
  late final String email;
  late final String phone;
  late final String companyname;
  late final String annualshipment;
  late final String country;
  late final String address;
  late final String createdAt;
  late final String updatedAt;
  late final String roles;
  late final String profileimage;
  late final String docs;
  late final String status;
  late final String drivingLicence;
  late final String taxDocs;
  late final String aboutMe;
  late final String language;
  late final String type;
  late final String token;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lname = json['lname'] == null ? "" : json['lname'];
    email = json['email'];
    phone = json['phone'];
    companyname = json['companyname'] == null ? "" : json['companyname'];
    annualshipment =
        json['annualshipment'] == null ? "" : json['annualshipment'];
    country = json['country'] == null ? "" : json['country'];
    address = json['address'] == null ? "" : json['address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    roles = json['roles'];
    profileimage = json['profileimage'] == null ? "" : json['profileimage'];
    docs = json['docs'] == null ? "" : json['docs'];
    status = json['status'] == null ? "" : json['status'];
    drivingLicence =
        json['drivingLicence'] == null ? "" : json['drivingLicence'];
    taxDocs = json['taxdocs'] == null ? "" : json['taxdocs'];
    aboutMe = json['aboutme'] == null ? "" : json['aboutme'];

    language = json['language'] == null ? "" : json['language'];
    type = json['type'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['lname'] = lname;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['companyname'] = companyname;
    _data['annualshipment'] = annualshipment;
    _data['country'] = country;
    _data['address'] = address;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['roles'] = roles;
    _data['profileimage'] = profileimage;
    _data['docs'] = docs;
    _data['status'] = status;
    _data['driving_licence'] = drivingLicence;
    _data['tax_docs'] = taxDocs;
    _data['about_me'] = aboutMe;
    _data['language'] = language;
    _data['type'] = type;
    _data['token'] = token;
    return _data;
  }
}
