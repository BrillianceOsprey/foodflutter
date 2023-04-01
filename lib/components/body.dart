import 'package:flutter/material.dart';
import 'package:foodflutter/components/discount_card.dart';

import 'package:foodflutter/components/productlist.dart';
//import 'package:foodflutter/screen/category_list.dart';
import 'package:foodflutter/screen/image_slider.dart';
import 'package:foodflutter/screen/search_box.dart';

import '../screen/category_list.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SearchBox(),
          const ImageSlider(),
          const CategoryList(),
          const DiscountCard(),
          //    const SizedBox(height: 20,),
          const ProductList()

          // const PorductList() //PorductList()

          // DebugPage()
        ],
      ),
    );
  }
}
