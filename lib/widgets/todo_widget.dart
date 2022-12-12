import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:reminderapp/modal/todo_modal.dart';
import 'package:reminderapp/provider/todo_provider.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({super.key});

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final mytodo = Provider.of<TodoProvider>(context);
    return Consumer<TodoProvider>(builder: ((context, index, child) {
      return ListView.builder(
        itemCount: index.todoList.length,
        itemBuilder: (context, i) {
          return ListTile(
              leading: const Icon(Icons.account_box),
              title: Text(mytodo.todo[i].title),
              subtitle: Text(mytodo.todo[i].todo),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<TodoProvider>(context, listen: false)
                      .removeTodo(i);
                },
                icon: const Icon(
                  Icons.cancel_sharp,
                  color: Color.fromARGB(255, 247, 21, 4),
                ),
              ));
        },
      );
    }));
  }
}
