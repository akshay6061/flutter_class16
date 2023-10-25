import 'package:flutter/material.dart';

class MyPro with ChangeNotifier{
int quantity=0;
int price=0;

void addnew(){
quantity++;
newprice();
notifyListeners();

}

void subnew(){
  quantity--;
  newprice1();
  notifyListeners();
}

void newprice(){
  if(quantity == 0){
    price == 0;
  }else{
    price = price + 1000;
  }
}

void newprice1(){
   if(quantity == 0){
    price == 0;
  }else{
    price = price - 1000;
  }
}

}