
import 'package:flutter/material.dart';


class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: ((cxt, i) =>  Container(
        color: i % 2 ==0? Colors.teal[200]: Colors.white,
        child:  ListTile(
          leading: const Text("ID: 1", style: TextStyle(fontWeight: FontWeight.bold),),
          title: Column(children: [
            const Text("Name", style: TextStyle(fontWeight: FontWeight.bold),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Text("Email: test@test.com", style: TextStyle(fontStyle: FontStyle.italic),),
              Text("Phone: 123456789", style: TextStyle(fontStyle: FontStyle.italic),),
            ],),
          ]),
        ),
      ) ),);
  }
}