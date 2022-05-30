import 'package:helloworld/Med.dart';

class GetallResponseModel {
  late final String status;
  late final String msg;
  late final List<dynamic> product_list;

  GetallResponseModel({required this.status, required this.msg,required this.product_list});
  factory GetallResponseModel.fromJson(Map<String, dynamic> json) {
    return GetallResponseModel(
        status: json["status"] != null ? json["status"] : "",
        msg: json["msg"] != null ? json["msg"] : "",
        product_list: json["product_list"]!=null? json["product_list"]:""
        
        
        );
  }
}

class GetallRequestModel {
  late String token;
  GetallRequestModel({required this.token});
  // ignore: non_constant_identifier_names
  Map<String, dynamic> ToJson() {
    Map<String, dynamic> map = {"token": token.trim()};

    return map;
  }
}
