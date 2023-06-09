
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodflutter/auth/login_status.dart';
import 'package:foodflutter/login_screen.dart';
import 'package:provider/provider.dart';

import 'auth/auth.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final key = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.pink),
          child: Column(
            children: [
              SizedBox(height: 90,),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                     
                      Center(
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.blue, fontSize: 44),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Center(
                        child: Text(
                          "Please Create New Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  )),


              Expanded(
                  child: Container(
                      //decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(43))),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(34),
                              topLeft: Radius.circular(34))),
                      //  Column(children: [ //if do this, it will error
                      child: Padding(
                        padding: EdgeInsets.all(23),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                               
                              
                              
                              Form(
                                  key: key,
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 1,
                                                    color: Colors.pink))),
                                        child: TextFormField(
                                          controller: nameController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Name",
                                          ),
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return "Name Must Not be Empty";
                                            }
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 1,
                                                    color: Colors.pink))),
                                        child: TextFormField(
                                          controller: emailController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Email",
                                          ),
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return "Email Must Not be Empty";
                                            }
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 22,
                                      ),
                                      Container(
                                        // decoration: BoxDecoration(color: Colors.white   ),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 1,
                                                    color: Colors.red))),
                                        child: TextFormField(
                                          controller: passwordController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Password",
                                          ),
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return "Password Must Not be Empty";
                                            }
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 22,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));        
                                          },
                                          child: Text(
                                            "Please Login", 
                                            style:
                                                TextStyle(color: Colors.pink, fontSize: 32),
                                          )),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        decoration:
                                            BoxDecoration(color: Colors.green),
                                        height: 45,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: OutlinedButton(
                                            onPressed: () async {
                                              // async
                                              if (key.currentState!
                                                  .validate()) {
                                           //   Map<String,dynamic> status = await Auth().register(emailController.text, passwordController.text );
                                          
                                      //    if(status['status']){// if status is true , use provider
                                       //     Provider.of<LoginStatus>(context, listen: false).setStatus(true);
                                       //  Navigator.pop(context);
                                       //   }
                                              }

                                             
                                            },
                                            child: Text(
                                              "Register",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 18),
                                            )),
                                      )
                                    ],
                                  ))

                                  ],
                                ),
                              )





                            
                      
                        ),
                      )
                      // ],),
                      )
            ],
          )),
    );
  }
}
  