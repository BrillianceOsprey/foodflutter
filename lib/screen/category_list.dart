
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  // TextEditingController nameController = TextEditingController();
  // TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    // nameController.dispose();
    //  descriptionController.dispose();
    super.dispose();
  }

  String defaultId = "1RWJTqrAiILuN9vLeSO7";
  Future<QuerySnapshot<Map<String, dynamic>>> categoryProducts =
      FirebaseFirestore.instance
          .collection("products")
          .where("category", isEqualTo: "1RWJTqrAiILuN9vLeSO7")
          .get();

// .snapshots()

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> categories =
        FirebaseFirestore.instance.collection("categories").snapshots();
    return Column(children: [
   
      StreamBuilder<QuerySnapshot>(
        stream: categories,
        //  stream: FirebaseFirestore.instance.collection("").snapshots(),

        builder: (context, AsyncSnapshot<QuerySnapshot> snapshots) {
          // builder: (context,AsyncSnapshot snapshots) {
          return Container(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                 physics: const BouncingScrollPhysics(),
                itemCount: snapshots.data?.docs.length,
                itemBuilder: (context, index) {
                  // DocumentSnapshot image = snapshots.data?.docs[index];
                  // print(snapshots.data!.docs.length); dtabase မှ data length ကို print ထူတ်နည်း // terminal မှာ I/flutter (22479): 6

                  return InkWell(
                    onTap: () {
                      setState(() {
                        categoryProducts = FirebaseFirestore.instance
                            .collection("products")
                            .where("category",
                                isEqualTo: snapshots.data!.docs[index].id)
                            .get();
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "${snapshots.data?.docs[index]["name"]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  );
                }),
          );
        },
      ),
      SingleChildScrollView(
          child: FutureBuilder(

              //future: storage.downloadURL('1RWJTqrAiILuN9vLeSO7'),
              future: categoryProducts,
              builder: (context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
               
                // ignore: sized_box_for_whitespace
                return Container(
                  height: 220,
                  // width: MediaQuery.of(context).size.width*0.7,
                  child: ListView.builder(
                     scrollDirection: Axis.horizontal, // if no horizontak, it is vertical in origin
                    //  physics: const BouncingScrollPhysics(),
                     physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data?.docs.length,
                      itemBuilder: (context, index) {
                       // return Text("${snapshot.data?.docs[index]['name']}");

                        return Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 20,
                                )
                              ]),

                              child: Padding(padding: const EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  const SizedBox(height: 5,),
                                  Container(child: Text("${snapshot.data?.docs[index]['name']}", style: const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),), ),
                                  const SizedBox(height: 5,),
                                   Container(
                                    padding: const EdgeInsets.all(0),
                                    child: Image.network("${snapshot.data?.docs[index]['image']}"), height: 120,),

                                ],
                              ),
                              ),
                              
                               ); 
                      }),
                );
              })
              ),
    ]);
  }
}

