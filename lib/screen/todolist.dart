import 'package:flutter/material.dart';
import 'package:todo_app/constants/todo_model.dart';

class TodoListPage extends StatefulWidget {
  final TodoModel todoModel;
  const TodoListPage({Key? key, required this.todoModel}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TodoListPageState();
  }
}

class TodoListPageState extends State<TodoListPage> {
  List<bool> checkBoxValues =
      List.generate(10, (index) => false); // List to store checkbox states

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 7, bottom: 8),
            child: ListTile(
              subtitle: Text(
                widget.todoModel.dueDate,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                print('Tap on list tile');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              tileColor: Colors.white,
              leading: Container(
                padding: const EdgeInsets.all(10.0),
                child: Checkbox(
                  value: checkBoxValues[index],
                  activeColor: Colors.green,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      setState(() {
                        checkBoxValues[index] = newValue;
                      });
                    }
                  },
                ),
              ),
              title: Text(
                widget.todoModel.taskName,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              trailing: Text(
                widget.todoModel.Type,
                style: TextStyle(
                  color: todoTypeColor(widget.todoModel.Type),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Color todoTypeColor(String value) {
    switch (value.toLowerCase()) {
      case "shopping":
        return Colors.amber;

      case "pending":
        return Colors.red;

      case "work":
        return Colors.blue;

      case "personal":
        return Colors.red;

      case "wishlist":
        return Colors.orange;

      default:
        return Colors.black;
    }
  }
}
