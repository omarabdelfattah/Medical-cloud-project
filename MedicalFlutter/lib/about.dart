import 'package:flutter/material.dart';
import 'package:helloworld/AddToCart.dart';
import 'package:helloworld/pages/Home.dart';
import 'contact.dart';
import 'constants.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
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
          title: const Text('About Us', style: TextStyle(color: Colors.black, fontSize: 25),),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(0, 40.0, 200.0, 0),
                  //   child: Text(
                  //     "Medical rep",
                  //     style: TextStyle(
                  //       fontSize: 28.0,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  // Divider(
                  //   color: Color(0xff639DC3),
                  //   indent: 30,
                  //   endIndent: 220,
                  //   height: 5,
                  //   thickness: 10,
                  // ),
                  Image.asset('assets/images/drugedit.png'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20.0, 130.0, 0),
                    child: Text(
                      "DOCTORS REVIEW",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff639DC3),
                    indent: 40,
                    endIndent: 150,
                    height: 1.5,
                    thickness: 7,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 40, left: 25),
                                    child: Container(
                                      height: 250,
                                      width: 280,
                                      margin: EdgeInsets.all(16.0),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                        )),
                                        color: Color(0xfff6e8ea),
                                        child: Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  "Rania Samy",
                                                  style: TextStyle(
                                                    fontSize: 26,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 17,
                                              ),
                                              Text(
                                                'Ggynecology & infertility',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff234cd6),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 25),
                                                child: Text(
                                                  '"Lorem ipsum dolor sit \n'
                                                  'amet , consectetur"',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30),
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 30,
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 110,
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(1),
                                      child: DecoratedBox(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/3.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 40, left: 25),
                                    child: Container(
                                      height: 250,
                                      width: 280,
                                      margin: EdgeInsets.all(16.0),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                        )),
                                        color: Color(0xfff6e8ea),
                                        child: Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 33),
                                                child: Text(
                                                  "Shaimaa ElMaaty",
                                                  style: TextStyle(
                                                    fontSize: 26,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 17,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Text(
                                                  'Dermatology & laser Consultant',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color(0xff234cd6),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 25),
                                                child: Text(
                                                  '"Lorem ipsum dolor sit \n'
                                                  'amet , consectetur"',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30),
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 30,
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 110,
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(1),
                                      child: DecoratedBox(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/4.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 40, left: 25),
                                    child: Container(
                                      height: 250,
                                      width: 280,
                                      margin: EdgeInsets.all(16.0),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                        )),
                                        color: Color(0xfff6e8ea),
                                        child: Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  "Hany Khalil",
                                                  style: TextStyle(
                                                    fontSize: 26,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 17,
                                              ),
                                              Text(
                                                'Dermatology & Andrology',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff234cd6),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 25),
                                                child: Text(
                                                  '"Lorem ipsum dolor sit \n'
                                                  'amet , consectetur"',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30),
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 30,
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 110,
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(1),
                                      child: DecoratedBox(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/2.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 40, left: 25),
                                    child: Container(
                                      height: 250,
                                      width: 280,
                                      margin: EdgeInsets.all(16.0),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                        )),
                                        color: Color(0xfff6e8ea),
                                        child: Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  "Emad Abdallah",
                                                  style: TextStyle(
                                                    fontSize: 26,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 17,
                                              ),
                                              Text(
                                                'Nose,ear & throat surgery',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff234cd6),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 25),
                                                child: Text(
                                                  '"Lorem ipsum dolor sit \n'
                                                  'amet , consectetur"',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30),
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 30,
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 30,
                                                    color: Color(0xFFEFE9B0),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 110,
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(1),
                                      child: DecoratedBox(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/1.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: FlatButton(
                      height: 60.0,
                      minWidth: 180.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      color: Color(0xff1b53ba),
                      child: Text(
                        'CONTACT INFO',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => contact()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
