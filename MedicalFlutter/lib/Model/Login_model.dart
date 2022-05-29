class LoginResponseModel {

late final String token; 
late final String status; 

LoginResponseModel({ required this.token,  required this.status});
factory LoginResponseModel.fromJson(Map<String ,dynamic> json){



  return LoginResponseModel(token: json["token"] !=null ?json["token"]:"", status: json["status"] != null?json["status"]:"");
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
