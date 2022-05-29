import 'package:flutter/material.dart';
import 'list.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

// enum payType { master, visa, cash }
// payType selectedpay = payType.cash;

class _AddToCartState extends State<AddToCart> {
  // List<Med> medicens=[
  //   Med(img: 'assets/valsatens-plus160_1.png', name: 'Valsatens-Plus', price: 125,rating: '4.5'),
  //   Med(img: 'assets/nexture.png', name: 'Nexicure', price: 50,rating: '4.5'),
  //   Med(img: 'assets/Natrilix-sr.png', name: 'Natrilix SR', price: 200,rating: '4.5'),
  //   Med(img: 'assets/floxamo.png', name: 'Floxamo', price: 100,rating: '4.5'),
  //   Med(img: 'assets/paramol-sol-tabs.png', name: 'Paramol', price: 20,rating: '4.5'),
  //   Med(img: 'assets/Metformin.png', name: 'Metformin', price: 30,rating: '4.5'),
  //   Med(img: 'assets/dermatop.png', name: 'Dermato', price: 45,rating: '4.5'),
  //   Med(img: 'assets/uripan.png', name: 'Uripan', price: 50,rating: '4.5'),
  // ];

  // Widget payment(
  //     {required String img, required bool isSelected, required payType pay}) {
  //   return GestureDetector(
  //       onTap: () {
  //         setState(() {
  //           selectedpay = pay;
  //         });
  //       },
  //       child: Opacity(
  //         opacity: isSelected ? 1 : 0.5,
  //         child: SvgPicture.asset(
  //           img,
  //           width: 60,
  //         ),
  //       ));
  // }

  int total = 0;

  Widget added(cartItems sample) {
    return Dismissible(
      onDismissed: (direction) {
        removeElement(sample);
        setState((){total-=(sample.num*sample.med.price);});
      },
      key: Key('${sample.med.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color(0xffffe6e6), borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Spacer(),
            Icon(
              Icons.delete_outline_rounded,
              size: 30,
            ),
          ],
        ),
      ),
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                sample.med.img,
                width: 100,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sample.med.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "${sample.med.price} EGP",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (sample.num > 1)
                          setState(() {
                            sample.num -= 1;
                            //total-=sample.med.price;
                          });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.grey[200],
                        child: Icon(Icons.remove),
                      ),
                    ),
                    Text(
                      '${sample.num}',
                      style: TextStyle(fontSize: 22),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sample.num += 1;
                          //total+=sample.med.price;
                          //total += sample.med.price;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(3),
                        color: Colors.grey[200],
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
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
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          'My Cart',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cart.map((e) => added(e)).toList()
            //[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     payment(
            //         img: 'assets/mastercard.svg',
            //         isSelected: selectedpay == payType.master,
            //         pay: payType.master),
            //     payment(
            //         img: 'assets/visa-credit-card.svg',
            //         isSelected: selectedpay == payType.visa,
            //         pay: payType.visa),
            //     GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           selectedpay = payType.cash;
            //         });
            //       },
            //       child: Opacity(
            //         opacity: (selectedpay == payType.cash) ? 1 : 0.5,
            //         child: Text(
            //           'Cash',
            //           style: TextStyle(
            //               fontStyle: FontStyle.italic,
            //               fontSize: 29,
            //               fontWeight: FontWeight.w900,
            //               color: Colors.yellow),
            //         ),
            //       ),
            //     )
            //   ],
            // )
            //],
            ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        height: 174,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xffdadada).withOpacity(0.15))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SubTotal: ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${cart.length > 0 ? cart.map((e) => (e.num * e.med.price)).reduce((value, element) => value + element).toString() : 0} EGP',
                    // total.toString(),
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deliviry fee: ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'FREE',
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total: ',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${cart.length > 0 ? cart.map((e) => (e.num * e.med.price)).reduce((value, element) => (value + element)).toString() : 0} EGP',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff639DC3),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                        'Check Out',
                      style: TextStyle(color: Colors.white,fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
