import 'Med.dart';

class cartItems {
  List<dynamic> med;
  int num;
  int id;
  int index;
  cartItems({required this.med, required this.num, required this.id,required this.index});
}

List<cartItems> cart = [];

void addElement(e) {
  if (cart.indexWhere((ele) => ele.id == e.id) == -1) {
    cart.add(e);
  } else {
    cart[cart.indexWhere((ele) => ele.id == e.id)].num++;
  }
}

void decElement(e) {
  cart[cart.indexWhere((ele) => ele.id == e.id)].num--;
}

void removeElement(s) {
  cart.remove(s);
}
