import 'package:flutter/material.dart';
import 'package:foodflutter/carts/cart_product.dart';

//import 'dart:js';

class Cart extends ChangeNotifier{
 //if click "Order Now", to save cart Products as Globel in cart
  List<CartProduct> cartProduct = [];
  dynamic totalAmt = 0;

  deleteProduct(CartProduct pro){
    this.cartProduct.forEach((element) { 
      if(element.product.id == pro.product.id){
     
     //if delete one in cart, to reduce total amount
       totalAmt -= element.product.price * element.counter; 
        this.cartProduct.remove(element);
         notifyListeners();
      }
    });
   
  }

 List<CartProduct> getList(){
    return this.cartProduct;
  }

  add(CartProduct cartPro){ // to save cartPro into CartProduct
   // this.cartProduct.add(cartPro);
    this.cartProduct.add(cartPro);
    
   totalAmt += cartPro.counter * cartPro.product.price;

    notifyListeners();
  }


  getLength(){
   // return this.cartProduct.length;
    return this.cartProduct.length;
  }

  has(CartProduct pro){

    int status =0;
    this.cartProduct.forEach((element) { //looping of cartProduct
       
       // id ordered before in cart = prodcut id productlist, same=> true, different=> false
      if(element.product.id == pro.product.id){ 
        status =1; //if true , show 1

      }
     });

     if(status == 1 ){ // status is 1, show true 
      return true;
     }
     return false;
  }


int getCount(CartProduct pro){
   int counter= 0;

   this.cartProduct.forEach((element) {
    if(element.product.id == pro.product.id){
      counter = element.counter;

    }

   });
       
  return counter; 

}  

updateProduct(CartProduct pro, int count){

  this.cartProduct.forEach((element) { 
    if(element.product.id == pro.product.id){
     
      
      totalAmt -= element.counter * element.product.price;
     totalAmt += pro.product.price * count;
       element.counter = count;
    }
   });

   notifyListeners();
}
}
