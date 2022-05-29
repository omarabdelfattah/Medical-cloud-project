import 'package:flutter/material.dart';
import 'package:helloworld/category_products.dart';
import 'package:helloworld/productInfo.dart';
import 'package:helloworld/constants.dart';
import 'package:helloworld/about.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

import '../AddToCart.dart';
import '../Med.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kTextt,
        ),
        body: ListView(
          children: <Widget>[
            _searchTextFormField(),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 20),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                _listViewCategory(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Newest Rlease',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                _listViewProduct(),
              ],
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
                  if (index == 3) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => about()));
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
              ),
            )));
  }

  Widget _searchTextFormField() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kTextt,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Medical Rep',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset(
                  "assets/images/Medical Rep Logo.png",
                  width: 100,
                  height: 100,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kTextt.withOpacity(0.34),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: kTextt.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/icons/Searchh.png",
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listViewCategory() {
    final List<String> names = <String>[
      'CNS',
      'Eye & Nose',
      'Infections',
      'Dental',
      'Analgesics'
    ];
    final List<String> icons = <String>[
      'assets/icons/Group 19.png',
      'assets/icons/Group 5.png',
      'assets/icons/Group 23.png',
      'assets/icons/Group 4.png',
      'assets/icons/Group 27.png'
    ];
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 100,
      child: ListView.separated(
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductsPage()));
            },
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade100,
                  ),
                  height: 60,
                  width: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icons[index]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(names[index])
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }

  Widget _listViewProduct() {
    List<Med> medicens = [
      Med(
        id: 1,
        img: 'assets/valsatens-plus160_1.png',
        name: 'Valsatens-Plus',
        price: 125,
        rating: '4.9',
      ),
      Med(
        id: 2,
          img: 'assets/nexture.png',
          name: 'Nexicure',
          price: 50,
          rating: '4.9'),
      Med(
        id: 3,
          img: 'assets/Natrilix-sr.png',
          name: 'Natrilix SR',
          price: 200,
          rating: '4'),
      Med(
        id: 4,
          img: 'assets/floxamo.png',
          name: 'Floxamo',
          price: 100,
          rating: '3.5'),
      Med(
        id: 5,
          img: 'assets/paramol-sol-tabs.png',
          name: 'Paramol',
          price: 20,
          rating: '3'),
      Med(
        id: 6,
          img: 'assets/Metformin.png',
          name: 'Metformin',
          price: 30,
          rating: '4'),
      Med(
        id: 7,
          img: 'assets/dermatop.png',
          name: 'Dermato',
          price: 45,
          rating: '4.4'),
      Med(
          id:8,img: 'assets/uripan.png', name: 'Uripan', price: 50, rating: '3.5'),
    ];
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 300,
      child: ListView.separated(
        itemCount: medicens.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          productInfo(meds: medicens[index])));
            },
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100,
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Image.asset(
                        medicens[index].img,
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          medicens[index].name,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
