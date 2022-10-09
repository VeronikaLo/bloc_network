
import 'package:flutter/material.dart';

import '../widgets/action_buttons.dart';
import '../widgets/user_list.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}