import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:reminderapp/provider/todo_provider.dart';
import 'package:reminderapp/widgets/todo_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final TextEditingController Title = TextEditingController();
  final TextEditingController EnterDetails = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mytodo = Provider.of<TodoProvider>(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "Title is required";
                      }
                      return null;
                    },
                    controller: Title,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Title",
                        hintText: "Political Campaign")),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "Details is required";
                      }
                      return null;
                    },
                    controller: EnterDetails,
                    maxLength: 50,
                    maxLines: 8,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Details...",
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    mytodo.addTodo(Title.text, EnterDetails.text);
                  },
                  icon: const Icon(Icons.add_alert),
                  label: const Text("Add to List"))
            ],
          ),
        ),
      )),
    );
  }
}
