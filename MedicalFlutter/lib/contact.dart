import 'package:flutter/material.dart';
import 'package:helloworld/pages/Home.dart';

import 'AddToCart.dart';
import 'about.dart';
import 'constants.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  int currentTab = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
          title: const Text('Contact Us', style: TextStyle(color: Colors.black, fontSize: 25),),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20.0, 130.0, 0),
                    child: Text(
                      "CONTACT SECTION",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff639DC3),
                    indent: 40,
                    endIndent: 140,
                    height: 1.5,
                    thickness: 7,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                          child: Text(
                            "Name:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Padding(
                            padding: EdgeInsets.only( right: 150),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30.0, 207.0, 0),
                          child: Text(
                            "E-mail:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Padding(
                            padding: EdgeInsets.only( right: 150),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30.0, 135.0, 0),
                          child: Text(
                            "Phone Number:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Padding(
                            padding: EdgeInsets.only( right: 150),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 60.0, 80.0, 0),
                          child: Text(
                            "REQUEST SECTION",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          color: Color(0xff639DC3),
                          indent: 15,
                          endIndent:135,
                          height: 1.5,
                          thickness: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 40.0, 151.0, 0),
                          child: Text(
                            "Your Message",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(right: 130),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                          child: FlatButton(
                            height: 50.0,
                            minWidth: 190.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            color: Color(0xff1b53ba),
                            child: Text(
                              'SEND MESSAGE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    color: kTextt.withOpacity(0.7),
                    spreadRadius: 0,
                    blurRadius: 70),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                currentIndex: currentTab,
                onTap: (index) {
                  setState(() {
                    currentTab = index;
                  });
                  if (index == 3) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => about()));
                  }
                  if (index == 0) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                  if (index == 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddToCart()));
                  }
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/icons/home fill.png',
                      fit: BoxFit.contain,
                      width: 20,
                    ),
                    label: '',
                    icon: Image.asset(
                      'assets/icons/home.png',
                      fit: BoxFit.contain,
                      width: 20,
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/icons/cart fill.png',
                      fit: BoxFit.contain,
                      width: 20,
                    ),
                    //activeIcon: Icon(Icons.add_shopping_cart),
                    label: '',
                    //icon: Icon(Icons.shopping_cart),
                    icon: Image.asset(
                      'assets/icons/cart.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/icons/profile fill.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                    label: '',
                    icon: Image.asset(
                      'assets/icons/profile.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/icons/about_fill.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                    label: '',
                    icon: Image.asset(
                      'assets/icons/about.png',
                      fit: BoxFit.contain,
                      width: 25,
                    ),
                  ),
                ],
                selectedItemColor: Colors.black,
              ),
            )));
  }
}
