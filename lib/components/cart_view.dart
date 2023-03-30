
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../carts/cart.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

  //int totalAmt = 0;

  @override
  Widget build(BuildContext context) {

    var cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart List"),
      ),

      body: Column(
        children: [
       /*  Row(
          children: [
            Container(
                    child: Text('Image',), width: 100,
                  ),
                  Text("Produt Name"),
                  Text('Quantity'),
                  Text("Amount"),
          ],
         ), */
         
          ListView.builder(
            itemCount: cart.getLength(),
            physics:  ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index){
             // return Text(cart.getList()[index].product.name);
             return Card(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Image.network(cart.getList()[index].product.image, width: 100, height: 100,),
             //     Container(
              //      child: Text(cart.getList()[index].product.name, style: TextStyle(color: Colors.pink),),
             //     )
            SizedBox(width: 10,),
             Column(
              children: [
                Container(
                  child: Text(cart.getList()[index].product.name, style: TextStyle(color: Colors.pink),),
              

                ), 
                Container(
                  child: Text("${cart.getList()[index].product.price} MMK"),
                )
              ],
             ),
             SizedBox(
              width: 10,
             ),
             //Text("${cart.getList()[index].counter}"),
             Column(
              children: [
               const Text("Quantity"),
                Text("${cart.getList()[index].counter}"),

              ],
             ),
             
             SizedBox(width: 10 ,),
             
            // Text("${cart.getList()[index].counter * cart.getList()[index].product.price}"),
               Column(
                children: [
                  Text("Amount"),
                    Text("${cart.getList()[index].counter * cart.getList()[index].product.price}"),
            
                ],
               ),

               TextButton(onPressed: (){
                
                setState(() {
                  cart.deleteProduct(cart.getList()[index]);
                
                });
               }, child: Icon(Icons.remove_circle))


                ],
              ),
             );
            }
            
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text("Total Amount", style: TextStyle(fontWeight: FontWeight.bold),),
              
             Text("${cart.totalAmt} MKK", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
        
        SizedBox(height: 20,),
        
            Container(
              width: MediaQuery.of(context).size.width* 0.6,
              decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(10),

              
              ),
              child: TextButton(onPressed: (){

              }, child: Text("Check Out", style: TextStyle(color: Colors.white),)),
            )
        ],
      ),
    );
  }
}