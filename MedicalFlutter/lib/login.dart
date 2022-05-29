import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Api/Api_service.dart';
import 'package:helloworld/Model/Login_model.dart';
import 'package:helloworld/pages/Home.dart';
import 'package:helloworld/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  late LoginRequestModel requestModel;

  Future<void> setdata(token) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("toke", token);
  }

  @override
  void initState() {
    super.initState();
    requestModel = LoginRequestModel(username: "omar1", password: "1234");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40.4,
          ),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            onSaved: (input) => requestModel.username = input!,
            // onFieldSubmitted: (String value)
            // {
            //print(value);
            // },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
              ),
              labelText: 'Email Address',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            onSaved: (input) => requestModel.password = input!,
            // onFieldSubmitted: (String value)
            // {
            //print(value);
            // },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                APIservice apIservice = new APIservice();
                apIservice.Login({
                  "username": emailController.text,
                  "password": passwordController.text
                }).then((value) {
                  // print(value.token);

                  if (value.token.isNotEmpty) {
                    final snackBar = SnackBar(content: Text("login"));

                    setdata(value.token);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                });
              },
              color: Colors.blue,
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('dont have an account? '),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Text('Resiter Now'),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
