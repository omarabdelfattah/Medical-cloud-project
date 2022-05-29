import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/Home.dart';
import 'AddToCart.dart';
import 'constants.dart';
import 'Med.dart';
import 'about.dart';
import 'list.dart';

class productInfo extends StatefulWidget {
  final Med meds;

  const productInfo({Key? key, required this.meds}) : super(key: key);

  @override
  State<productInfo> createState() => _productInfoState();
}

class _productInfoState extends State<productInfo> {
  int currentTab = 0;
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
          title: Text('${widget.meds.name}', style: TextStyle(color: Colors.black, fontSize: 25),),
          centerTitle: true,
        ),
        body: ListView(children: [
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(15, 15, 0, 20),
          //   child: Text(
          //     "${widget.meds.name}, Contains amoxicillin trihydrate and flucloxacillin sodium",
          //     maxLines: 2,
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          //   ),
          // ),
          Center(
            child: Container(
              width: 373,
              child: Card(
                color: Color(0xffeceff1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  color: Color(0xfffA8D1EC),
                                  width: 55,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          widget.meds.rating,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ])),
                              SizedBox(
                                width: 250,
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                        color: Color(0xfffA8D1EC)),
                                    child: Icon(Icons.favorite_border_outlined),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40)),
                                          color: Color(0xfffA8D1EC)),
                                      child: Icon(Icons.share_outlined))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
                      child: Image(
                        image: AssetImage(widget.meds.img),
                        width: 210,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: "EGP ",
                    style: TextStyle(fontSize: 25),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${widget.meds.price}  ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                    ],
                  ),
                ),
                Text(
                  "-20%",
                  style: TextStyle(color: Colors.red, fontSize: 22),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 22, 0, 0),
            child: Text(
              "Indications And Usage:",
              style: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
            child: Text(
              "Skin and soft tissue infections.\n"
              "Bone and joint infections.\n"
              "Upper and lower respiratory tract infections",
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 22, 0, 0),
            child: Text(
              "Adverse Effects:",
              style: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
            child: Text(
              "Floxamo® is well tolerated but in rare cases diarrhea, nausea or"
              "cholestatic jaundice which is reversible, may occur.",
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 35, 10),
              child: ElevatedButton(
                child: Text("Add To Cart"),
                onPressed: () {
                  addElement(cartItems(med: widget.meds, num: 1, id: widget.meds.id));
                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //   content: Container(
                  //     padding: EdgeInsets.all(16),
                  //     decoration: BoxDecoration(
                  //       color: Color(0xffb0bec5),
                  //       borderRadius: BorderRadius.all(Radius.circular(18))
                  //     ),
                  //     height: 60,
                  //
                  //       child: Text("Product Add to Cart Succssefully :)",
                  //         style:TextStyle(color: Colors.black) ,)),
                  //   behavior: SnackBarBehavior.floating,
                  //   backgroundColor: Colors.transparent,
                  //
                  //   elevation: 0,
                  // ),);
                  AwesomeDialog(
                    context: context,
                    animType: AnimType.TOPSLIDE,
                    dialogType: DialogType.SUCCES,
                    body: Center(
                      child: Text(
                        'Product added to cart sucessfully ;)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    title: 'This is Ignored',
                    desc: 'This is also Ignored',
                    btnOkColor: Color(0xff639DC3),
                    btnOkOnPress: () {},
                  )..show();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(190, 45),
                  primary: Color(0xff639DC3),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ]),
        ]),
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
