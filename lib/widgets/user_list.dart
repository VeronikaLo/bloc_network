
import 'package:bloc_network/bloc/user_bloc.dart';
import 'package:bloc_network/bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: ((context, state) {
        if(state is UserEmptyState){
          return const Center(
            child:  Text('No data recieved. Please press Load button', 
            textAlign: TextAlign.center,
            style: TextStyle( fontSize: 20),),
          );
        }

        if(state is UserLoadingState){
          return const Center(child: CircularProgressIndicator());
        }

        if(state is UserError){
          return const Center(child: Text('Ops, Error fetching the data!'));
        }

        if(state is UserLoadedState){
          return ListView.builder(
      itemCount: 10,
      itemBuilder: ((cxt, i) =>  Card(
        color:  i % 2 ==0? Colors.teal[200]: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: ListTile(
          leading: Text("ID: ${state.loadedUser[i].id}", style: const TextStyle(fontWeight: FontWeight.bold),),
          title: Column(children: [
            Text(state.loadedUser[i].name, style: const TextStyle(fontWeight: FontWeight.bold),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
              Text("Email: ${state.loadedUser[i].email}", style: const TextStyle(fontStyle: FontStyle.italic),),
              Text("Phone: ${state.loadedUser[i].phone}", style: const TextStyle(fontStyle: FontStyle.italic),),
            ],),
          ]),
        ),
      ) ),);
        }
      return const SizedBox.shrink();
      }));
  }
}