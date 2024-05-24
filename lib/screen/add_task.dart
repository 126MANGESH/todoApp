
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Add new task',
                  suffixIcon: Icon(Icons.add_task),
                ),
              ),
            ),
          ),
          const SizedBox(width: 11,),
          CircleAvatar(
            radius: 30,
            child: IconButton(
              onPressed: () {
                
              },
              icon: const Icon(Icons.add, size: 42),
            ),
          ),
        ],
      ),
    );
  }
}
