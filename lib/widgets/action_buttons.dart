import 'package:bloc_network/bloc/user_bloc.dart';
import 'package:bloc_network/bloc/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: (){
            userBloc.add(UserLoadEvent());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 138, 224, 220),
            foregroundColor: Colors.white,
            elevation: 4,
          ) ,
          child: const Text("Load"),),
        const SizedBox(width: 30,),
        ElevatedButton(
          onPressed: (){
            userBloc.add(UserClearEvent());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[200],
            foregroundColor: Colors.white,
            elevation: 4
          ) ,
          child: const Text("Clear",),),  
          
      ],
    );
  }
}