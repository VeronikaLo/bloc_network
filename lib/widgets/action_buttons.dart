import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 138, 224, 220),
            foregroundColor: Colors.white,
            elevation: 4,
          ) ,
          child: const Text("Load"),),
        const SizedBox(width: 30,),
        ElevatedButton(
          onPressed: (){},
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