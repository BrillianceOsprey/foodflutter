import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset("assets/hkc.jpeg"),
        Image.asset("assets/stanford.jpeg"),
        Image.asset("assets/building.jpeg"),
        Image.asset("assets/Lse_library_interior.jpeg"),
        Image.asset("assets/stanford.jpeg"),
        Image.asset("assets/hkc.jpeg"),
        Image.asset("assets/Lse_library_interior.jpeg"),
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: 60,
        //   decoration: const BoxDecoration(

        //       // image: DecorationImage(
        //       //fit: BoxFit.fill,
        //       //   image: AssetImage("")
        //       //  )

        //       ),
        // ),
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: 60,
        //   decoration: const BoxDecoration(
        //       // image: DecorationImage(
        //       //fit: BoxFit.fill,
        //       //   image: AssetImage("")
        //       //  )

        //       ),
        // ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
      ),
    );
    //viewportFraction: 1 means full image
  }
}
