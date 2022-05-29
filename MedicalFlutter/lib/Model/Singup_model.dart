class RegisterResponseModel {

  late final String error;

  RegisterResponseModel({ required this.error});
  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
        
        error: json["error"] != null ? json["error"] : "");
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
