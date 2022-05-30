import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Api/Api_service.dart';
import 'package:helloworld/login.dart';
import 'package:helloworld/pages/Home.dart';

class RegisterScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var phonenoController = TextEditingController();
  var locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Register',
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
            controller: usernameController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
              ),
              labelText: 'User Name',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
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
            height: 15.0,
          ),
          TextFormField(
            controller: phonenoController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
              ),
              labelText: 'Phone No',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFormField(
            controller: locationController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.location_city,
              ),
              labelText: 'Location',
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
                print(phonenoController.text);
                print(usernameController.text);
                print(locationController.text);

                APIservice2 apIservice2 = new APIservice2();
                apIservice2.register({
                  "username": usernameController.text,
                  "password": passwordController.text,
                  "email": emailController.text,
                  "phone": phonenoController.text,
                  "address": locationController.text,
                  "name": usernameController.text
                }).then((value) {
                  
                  if (value.status=="success") {
                    print(value.status);

                     Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }
                });
               
              },
              color: Colors.blue,
              child: Text(
                'Register',
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
              Text('Already have account? '),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text('LOGIN'),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
