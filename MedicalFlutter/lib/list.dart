import 'Med.dart';

class cartItems{
  Med med;
  int num;
  int id;
  cartItems({required this.med,required this.num, required this.id});
}

List<cartItems> cart=[];

void addElement(e){
  if(cart.indexWhere((ele) => ele.id==e.id)==-1){
    cart.add(e);
  }
  else{
    cart[cart.indexWhere((ele) => ele.id==e.id)].num++;
  }
}

void decElement(e){
  cart[cart.indexWhere((ele) => ele.id==e.id)].num--;
}

void removeElement(s){
  cart.remove(s);
}
