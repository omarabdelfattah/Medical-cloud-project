import 'package:helloworld/Model/Getallproduct_Model.dart';
import 'package:helloworld/Model/Login_model.dart';
import 'package:helloworld/Model/Singup_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIservice {
  Future<LoginResponseModel> Login(Map<String, dynamic> e) async {
    Uri url = Uri.parse('http://localhost:9090/accounts/login/');

    final response = await http.post(url, body: jsonEncode(e));

    if (response.statusCode == 200 || response.statusCode == 400) {
      // print(response.body[5]);
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Data  ');
    }
  }
}

class APIservice2 {
  Future<RegisterResponseModel> register(Map<String, dynamic> e) async {
    Uri url2 = Uri.parse('http://localhost:9090/accounts/register/?name');

    final response2 = await http.post(url2, body: jsonEncode(e));

    if (response2.statusCode == 200 || response2.statusCode == 400) {
      // print(response.body[5]);
      return RegisterResponseModel.fromJson(json.decode(response2.body));
    } else {
      throw Exception('Failed to load Data  ');
    }
  }
}

class APIservice3 {
  Future<GetallResponseModel> fetch(Map<String, dynamic> e) async {
    Uri url3 = Uri.parse("http://localhost:9090/inventory/index.php/");

    final response3 = await http.post(url3,body: jsonEncode(e));
  
    if (response3.statusCode == 200 || response3.statusCode == 400) {
      
      
      return GetallResponseModel.fromJson(json.decode(response3.body));
    } else {
      throw Exception('Failed to load Data  ');
    }



  }
}
