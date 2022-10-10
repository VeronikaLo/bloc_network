
import 'package:bloc_network/bloc/user_bloc.dart';
import 'package:bloc_network/services/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/action_buttons.dart';
import '../widgets/user_list.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final userRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(userRepository: userRepository),
      child: Scaffold(
      appBar: AppBar(
        title: const Text("Bloc example"), 
        centerTitle: true, 
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            ActionButtons(),
            SizedBox(height: 20,),
            Expanded(child: UserList()),
          ],),
      ) ,
    ) ,);
  }
}