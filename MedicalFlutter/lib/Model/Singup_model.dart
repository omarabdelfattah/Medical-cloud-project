class RegisterResponseModel {

  late final String status;

  RegisterResponseModel({ required this.status});
  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
        
        status: json["status"] != null ? json["status"] : "");
  }
}

class RegisterRequestMoedl {
  late String username;
  late String password;
  late String email;
  late String phone;
  late String address;
  late String name;
  RegisterRequestMoedl({required this.username, required this.password,required this.address,required this.email,required this.phone});
  // ignore: non_constant_identifier_names
  Map<String, dynamic> ToJson() {
    Map<String, dynamic> map = {
      'username': username.trim(),
      'password': password.trim()
    };

    return map;
  }
}
