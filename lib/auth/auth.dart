

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth{

Future<Map<String,dynamic>>
  register(String email, String password )async{

    Map<String,dynamic> res = {"status": false};
    
    try{
  UserCredential user   = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
   res["status"] = true;

    }catch (e){
      print(e);

    }

    return res;
  }

  logout(){
    FirebaseAuth.instance.signOut();
  }



 Future<Map<String,dynamic>> login(String email, String password)async{
    
    Map<String, dynamic> result = {"status": false};
    try{
  UserCredential user = await   FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  result['status'] = true;
 
  }catch(e){

  }

  return result;
  }

}

