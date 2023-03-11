/*
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final key = GlobalKey<FormState>();
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController nameController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    //return Container();

    return Scaffold(
    // appBar: AppBar(title: Text("LogIn"),backgroundColor: Colors.pink,),
      body: Container(
        decoration: const BoxDecoration(color: Colors.pink),
        child: Column(
          children: [
     const SizedBox(height: 90,),
      
      Padding(padding: const EdgeInsets.all(20),
     // child: Center(child: Text("LogIn"),),
       child: Column(children: const[
        Center(child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 45,),),),
        SizedBox(height: 15,),
        Center(child: Text("Please Login", style: TextStyle(color: Colors.green, fontSize: 21, fontWeight: FontWeight.bold),),),

        SizedBox(height: 23,)
       ],),
      

       
      ),

      Expanded(
        
        child: 
       // Column ( children: [

        //1
          Container(
            decoration: const BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(23), topRight: Radius.circular(23) )
            ),
            child: Padding(padding: const EdgeInsets.all(23),
        
          child: SingleChildScrollView(
            child: Column(
            
            
            children: [
              
              Form(
                key: key,
                child: Column(children: [

            
          // Container( child: Column(children: [
              // Form(child: Column(children: [
             const SizedBox(height: 30,),
                 Container(
               // decoration: BoxDecoration(color: Colors.blue, ),

                 decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.red))),
                 
                  child: TextFormField(
                    
                    controller: emailController,
                    decoration: const InputDecoration(border: InputBorder.none, hintText: "Enter Your Email"),

                    validator: (val){
                      if(val == null || val.isEmpty){
                        return "Email Must Not Be Empty";
                      }
                      return null;
                    },
                  ),),
                const  SizedBox(height: 20,),

                  Container(
                  //  decoration: BoxDecoration(color: Colors.pink),
                  decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.red))),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                       border: InputBorder.none,
                        hintText: "Enter Your Password"),

                       validator: (val){
                        if(val == null || val.isEmpty){
                          return "Password Must Not Be Empty";
                        }
                        return null;
                       },
                    ),
                  ),
              // ],))
             // ],),)T
            
           const SizedBox(height: 40,),
             TextButton(onPressed: (){

             // BlocProvider.of<BlocPage>(context).add(RegisterEvent());
             }, child: const Text("Create New Account", style: TextStyle(fontSize: 20),)),
           
          const SizedBox(height: 27,),
           Container(
            
            decoration: const BoxDecoration(color: Colors.green),
            height: 50,
            width: MediaQuery.of(context).size.width*0.25,  //0.5 is 1/2 , 0.25 is 1/4
            child: TextButton(onPressed: (){
             if(key.currentState!.validate()){

             }
             }, child: const Text("LogIn",style: TextStyle(color: Colors.pink, fontSize: 22),)),
             )
             ],))
            ],
          ) ,
          
          ),
       
         
          ),
          
          ),
        
        //],),
      )

      
        
      ],),

      
      
      ),
      

      
    );
  }
}

*/