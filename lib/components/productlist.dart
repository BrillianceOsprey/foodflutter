
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PorductList extends StatefulWidget {
  const PorductList({super.key});

  @override
  State<PorductList> createState() => _PorductListState();
}

class _PorductListState extends State<PorductList> {
  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> product =
        FirebaseFirestore.instance.collection("products").snapshots();
    print("product list");
    return StreamBuilder<QuerySnapshot>(
        stream: product,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshots) {
          // return Text("Princeton University");

          print(snapshots.data ?? "no data");
// set loading before getting image url form network
          if (snapshots.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
// do something when getting data
          if (!snapshots.hasData) {
            return const Text("No data found");
          }

          return GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              // itemCount: 2,
              itemCount: snapshots.data?.docs.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                // childAspectRatio: 1.5,
              ),
              itemBuilder: (BuildContext context, index) {
                // return Text("Yale University");
                print("${snapshots.data?.docs[index]['image']}");
                print("hello");
                return ListView(
                  // shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        // Image.network("${snapshots.data?.docs[index]['image']}")
                        CachedNetworkImage(
                          imageUrl: "${snapshots.data?.docs[index]['image']}",
                          imageBuilder: (context, imageProvider) => Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ],
                    ),
                  ],
                );

                /*
        return InkWell(
          onTap: (){

          Product product= Product( snapshots.data?.docs[index]['name'], 
           snapshots.data!.docs[index]['price'] , 
           snapshots.data!.docs[index]['description'],
            snapshots.data!.docs[index]['image'], 
           snapshots.data!.docs[index]['shop']
         );

            Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen( snapshots.data!.docs[index].id, product)));
          },
      
        
        
        child: SingleChildScrollView(
          child: Column(children: [
       Container(
       //padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Image.network("${snapshots.data?.docs[index]['image']}"),
      ),

      Container(
        child: Column(
          children: [
            Text("${snapshots.data?.docs[index]['name']}", style: TextStyle(color: Colors.red) ,),
            Text("${snapshots.data?.docs[index]['price']} MMK", style: TextStyle(color: Colors.green),)
          ],
        ),
      ) 
      

     //  Column(
    //    children: [
    //     Text("${snapshots.data?.docs[index]['name']}", style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14),)
      //   ],
    //  )
        ],) ) 
        
        );
        */
              });
        });
  }
}
