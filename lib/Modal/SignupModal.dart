class SignupModalData {
  SignupModalData({
    required this.status,
    required this.message,
    required this.data,
  });
  late final bool status;
  late final String message;
  late final List<Data> data;

  SignupModalData.fromJson(Map<String, dynamic> json) {
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
    required this.name,
    required this.email,
    required this.phone,
    this.companyname,
    this.annualshipment,
    this.country,
    required this.roles,
    this.profileimage,
    required this.type,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
    required this.token,
  });
  late final String name;
  late final String email;
  late final String phone;
  late final Null companyname;
  late final Null annualshipment;
  late final Null country;
  late final String roles;
  late final Null profileimage;
  late final String type;
  late final String updatedAt;
  late final String createdAt;
  late final int id;
  late final String token;

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    companyname = null;
    annualshipment = null;
    country = null;
    roles = json['roles'];
    profileimage = null;
    type = json['type'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['companyname'] = companyname;
    _data['annualshipment'] = annualshipment;
    _data['country'] = country;
    _data['roles'] = roles;
    _data['profileimage'] = profileimage;
    _data['type'] = type;
    _data['updated_at'] = updatedAt;
    _data['created_at'] = createdAt;
    _data['id'] = id;
    _data['token'] = token;
    return _data;
  }
}
