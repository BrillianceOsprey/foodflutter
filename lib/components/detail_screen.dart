import 'package:flutter/material.dart';

import 'package:foodflutter/carts/cart_product.dart';
import 'package:foodflutter/components/cart_view.dart';
import 'package:foodflutter/components/product.dart';
import 'package:provider/provider.dart';

import '../carts/cart.dart';

class DetailScreen extends StatefulWidget {
  //const DetailScreen({super.key});
  late String id;
  Product product;
  DetailScreen(this.id, this.product);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int counter = 0; //2 state
  int updateCounter = 0; // to increase cart after adding to cart

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail"),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => CartView()));
              },
              icon: Row(
                children: [
                  //  SvgPicture.asset("assets/icons/basket.svg", color: Colors.white, ),
                  Text(
                    "${cart.getLength()}",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ))
        ],
      ),
      body: Column(
        children: [
          Image.network(
            widget.product.image,
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity, // put image in center
            fit: BoxFit.fill,
          ), //0.25 is 25%

          Expanded(
              child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height *
                  0.7, // 1 full screen 0.7 and 0.3
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),

              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.white),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //to put price  to right side

                            children: [
                              Column(
                                children: [
                                  Text(
                                    widget.product.name,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${widget.product.price}",
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                    const Text(
                                      "MKK",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.product.description,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            // setState(() {
                            //  this.counter--;

                            //5 if less than 0, not to work
                            //if(this.counter !=0){
                            if (counter != 0) {
                              setState(() {
                                //  this.counter--;
                                counter--;
                                //     this.updateCounter--; // to decrease number in cart that are stored bored
                              });
                            }
                            if (updateCounter +
                                    cart.getCount(
                                        CartProduct(counter, widget.product)) !=
                                0) {
                              setState(() {
                                updateCounter--;
                              });
                            }
                            //  }); // 5 to decrease
                          },
                          icon: const Icon(Icons.remove_circle)),
                      cart.has(CartProduct(counter, widget.product))
                          ? // terminal operator //check true of false

                          //if true, this will work
                          //  Text("${cart.getCount(CartProduct(this.counter, widget.product))}"):
                          Text(
                              "${updateCounter + cart.getCount(CartProduct(counter, widget.product))}",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )
                          :
                          //3 ("${counter}") , if false, this will work
                          Text(
                              "$counter",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            //  counter++;
                            counter++;
                            //  this.updateCounter++;
                          });
                          //4 increase

                          if (cart.has(CartProduct(counter, widget.product))) {
                            setState(
                              () {
                                updateCounter++;
                              },
                            );
                          }
                        },
                        icon: const Icon(
                          Icons.add_circle,
                        ),
                      ),
                    ],
                  ),

                  //  SizedBox(height: 4,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: InkWell(
                      // part two 1
                      onTap: () {
                        CartProduct cartProduct =
                            CartProduct(counter, widget.product);
                        //  cart.add(cartProduct);
                        if (cart.has(cartProduct)) {
                          cart.updateProduct(
                            cartProduct,
                            updateCounter +
                                cart.getCount(
                                  CartProduct(counter, widget.product),
                                ),
                          );
                          setState(() {
                            updateCounter = 0;
                          });
                        } else {
                          cart.add(cartProduct);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SvgPicture.asset("assets/icon/basket.svg"),

                            Container(
                              width: 20,
                            ),
                            const Text(
                              "Order Now",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
