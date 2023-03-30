
//import 'dart:js';
import 'package:flutter/material.dart';

class LoginStatus extends ChangeNotifier{

  bool status = false;

  setStatus(bool val){
    // this.status = val;
    this.status = val;
  }

  getStatus(){
    //return this.status;
    return this.status;
  }
}
