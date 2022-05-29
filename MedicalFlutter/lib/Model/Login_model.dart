class LoginResponseModel {

late final String token; 
late final String error; 

LoginResponseModel({ required this.token,  required this.error});
factory LoginResponseModel.fromJson(Map<String ,dynamic> json){



  return LoginResponseModel(token: json["token"] !=null ?json["token"]:"", error: json["error"] != null?json["error"]:"");
}

}

class LoginRequestModel {
  late String username;
  late String password;
  LoginRequestModel({required this.username, required this.password});
  // ignore: non_constant_identifier_names
  Map<String,dynamic> ToJson (){
    Map<String,dynamic> map={'username':username.trim(),'password':password.trim()};

    return map;

  }
}
