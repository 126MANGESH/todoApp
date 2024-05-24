import 'package:flutter/material.dart';
import 'package:todo_app/constants/searchbox.dart';
import 'package:todo_app/constants/todo_model.dart';
import 'package:todo_app/screen/add_task.dart';
import 'package:todo_app/screen/todolist.dart';
import 'package:todo_app/constants/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Changed to a neutral background color
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            SearchBox(),
            Expanded(
              child: TodoListPage(
                todoModel: TodoModel(
                  taskName: "task2",
                  Type: "pending",
                  dueDate: "20:04:2024", type: '', 
                ),
              ),
            ),
            
            const AddTask(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.grey[200],
      elevation: 0,
      actions: [
        PopupMenuButton<String>(
          itemBuilder: (context) => PopupMenuItemTitleList.map((e) => PopupMenuItem<String>(
            value: e,
            child: Text(e),
          )).toList(),
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black, size: 35),
          ),
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/passport.JPG'),
          ),
        ],
      ),
    );
  }
}
