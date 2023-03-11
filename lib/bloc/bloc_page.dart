/*
import 'package:foodflutter/bloc/bloc_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_state.dart';

class BlocPage extends Bloc<BlocEvent,BlocState>{

  BlocPage():super(InitialState());

  /*
  @override
  Stream<BlocState> mapEventToState(BlocEvent event) {
   
    
  }*/
  @override 
  Stream<BlocState> mapEventToState(BlocEvent event) {
    // TODO: implement mapEventToState
    return super.mapEventToState(event); 
     if(event is LoginEvent){
      yield LoginState();
    } else if(event is PostListEvent){
      yield PostListState();
    }
  }
}*/