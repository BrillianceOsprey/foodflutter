
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscountCard extends StatefulWidget {
  const DiscountCard({super.key});

  @override
  State<DiscountCard> createState() => _DiscountCardState();
}

class _DiscountCardState extends State<DiscountCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      
      child: Column(
        children:  [
          
        const SizedBox(height: 20,),
        
        const  Text("Offer & Discount", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,),),
          
         Container(
          height: 165,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/Los.jpeg", ),
            
          fit: BoxFit.fill 
            )
          ),
          child: Padding(padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded( 
                child:SvgPicture.asset("assets/icon/discount.svg") ),

              Expanded(
                child: RichText(
                text: const TextSpan(
                children: [
                  TextSpan(text: "Get Discount of", style: TextStyle(fontSize: 26, color: Colors.yellowAccent, fontWeight: FontWeight.bold)),
                  TextSpan(text: " 40%", style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold))
                ]
              )))
            ],
          ),
          ),
         ),
         // Expanded(child: SvgPicture.asset("assets/icon/discount.svg"))
        
        ],
      ),
    );
  }
}



