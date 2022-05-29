import 'package:flutter/material.dart';
import 'package:helloworld/pages/Home.dart';
import 'package:helloworld/productInfo.dart';
import 'AddToCart.dart';
import 'about.dart';
import 'constants.dart';
import 'Med.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int currentTab = 0;
  List<Med> medicens = [
    Med(
      id: 1,
      img: 'assets/valsatens-plus160_1.png',
      name: 'Valsatens-Plus',
      price: 125,
      rating: '4.9',
    ),
    Med(id:2,img: 'assets/nexture.png', name: 'Nexicure', price: 50, rating: '4.9'),
    Med(
      id: 3,
        img: 'assets/Natrilix-sr.png',
        name: 'Natrilix SR',
        price: 200,
        rating: '4'),
    Med(
        id:4,img: 'assets/floxamo.png', name: 'Floxamo', price: 100, rating: '3.5'),
    Med(
      id: 5,
        img: 'assets/paramol-sol-tabs.png',
        name: 'Paramol',
        price: 20,
        rating: '3'),
    Med(id:6,img: 'assets/Metformin.png', name: 'Metformin', price: 30, rating: '4'),
    Med(id:7,img: 'assets/dermatop.png', name: 'Dermato', price: 45, rating: '4.4'),
    Med(id:8,img: 'assets/uripan.png', name: 'Uripan', price: 50, rating: '3.5'),
  ];

  Widget Cards(Med meds) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => productInfo(meds: meds)));
        },
        child: Card(
          color: const Color(0xfff6e8ea),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  meds.img,
                  width: 100,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    meds.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Row(children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 25,
                    ),
                    Text(
                      meds.rating,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ]),
                  Row(
                    children: [
                      const Text(
                        'Price:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        '${meds.price} EGP',
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

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
          title: const Text('Cardivascular System', style: TextStyle(color: Colors.black, fontSize: 25),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Column(
              children: medicens.map((e) => Cards(e)).toList(),
            ),
          ),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 10),
                    color: kTextt.withOpacity(0.7),
                    spreadRadius: 0,
                    blurRadius: 70),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
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
                        MaterialPageRoute(builder: (context) => const about()));
                  }
                  if (index == 0) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
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
