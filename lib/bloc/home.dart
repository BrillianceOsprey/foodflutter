/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/auth.dart';
import 'bloc_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  void initState(){
    super.initState();

    //BlocProvider.of<BlocPage>(context).add(NewPostEvent());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(title: Text("Home App"),backgroundColor: Colors.red,),
     
  
      drawer: Drawer(child: ListView(
        children: [
        const  UserAccountsDrawerHeader(accountName: Text("Yale"), 
          accountEmail: Text("yale@gmail.com")),
          
          
         const  SizedBox(height: 20,),

          ListTile(
            leading: const Icon(Icons.add),
            title: const Text("New Post", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){

         // BlocProvider.of<BlocPage>(context).add(NewPostEvent());
           Navigator.pop(context); //post lis နျိပ်ြပိးရင် drawer ြပန် မပတ်လို့ ပိတ် ြပိး post list pageသွားရန်
       
         },
          ),
          
           const SizedBox(height: 20,),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Post List", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){
         // BlocProvider.of<BlocPage>(context).add(PostListEvent() );
          Navigator.pop(context); //post lis နျိပ်ြပိးရင် drawer ြပန် မပတ်လို့ ပိတ် ြပိး post list pageသွားရန်
       
         },
          ),
           const   SizedBox(height: 20,),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Date", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){
         // BlocProvider.of<BlocPage>(context).add(DatePickerEvent() );
          Navigator.pop(context); //post lis နျိပ်ြပိးရင် drawer ြပန် မပတ်လို့ ပိတ် ြပိး post list pageသွားရန်
       
         },
          ),

        const   SizedBox(height: 20,),

          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Json Array Page", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){
          //BlocProvider.of<BlocPage>(context).add(JsonArrayEvent() );
          Navigator.pop(context); //post lis နျိပ်ြပိးရင် drawer ြပန် မပတ်လို့ ပိတ် ြပိး post list pageသွားရန်
       
         },
          ),

           ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Body BMI", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){
        //  BlocProvider.of<BlocPage>(context).add(BodyEvent() );
          Navigator.pop(context); //post lis နျိပ်ြပိးရင် drawer ြပန် မပတ်လို့ ပိတ် ြပိး post list pageသွားရန်
       
         },
          ),

              ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Tab Bar", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){
          //BlocProvider.of<BlocPage>(context).add(TabBarPageEvent() );
          Navigator.pop(context); //post lis နျိပ်ြပိးရင် drawer ြပန် မပတ်လို့ ပိတ် ြပိး post list pageသွားရန်
       
         },
          ),

              ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Sliver Style", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){
         // BlocProvider.of<BlocPage>(context).add(SliverEvent() );
          Navigator.pop(context); //post lis နျိပ်ြပိးရင် drawer ြပန် မပတ်လို့ ပိတ် ြပိး post list pageသွားရန်
       
         },
          ),
        
        const SizedBox(height: 20,),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("LogOut", style: TextStyle(fontWeight: FontWeight.bold),),
         
         onTap: (){
         // Auth().logout();
         // BlocProvider.of<BlocPage>(context).add(LoginEvent());
       // if click loginevent, to log to login page 
       Auth().logout();
      // BlocProvider.of<BlocPage>(context).add(LoginEvent());
         },
          ),
        

        ],
      )),
      

      body: BlocBuilder<BlocPage,BlocState>(builder: (BuildContext context,state){
     
     if(state is NewPostState){
      return const NewPost();
     }else if(state is PostListState){
      return const PostList();
     }
      else{
      return const PostList();
     }
      },
    )
    );
  }
}
*/