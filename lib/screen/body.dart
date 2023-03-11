import 'package:flutter/material.dart';

import 'package:foodflutter/components/productlist.dart';
import 'package:foodflutter/screen/category_list.dart';
import 'package:foodflutter/screen/image_slider.dart';
import 'package:foodflutter/screen/search_box.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    print("hello");

    return SingleChildScrollView(
      child: Column(
        children: [
          const SearchBox(),
          const ImageSlider(),
          const CategoryList(),
          // DiscountCard(),
          //  SizedBox(height: 10,),
          //Productlist()

          Container(
            // height: 200,
            child: PorductList(),
          ) //PorductList()

          // DebugPage()
        ],
      ),
    );
  }
}
