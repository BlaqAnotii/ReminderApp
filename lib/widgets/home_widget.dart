import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:statemyapp/provider.dart/favorite_provider.dart';
import 'package:statemyapp/provider.dart/util.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContactList(),
    );
  }
}

// ignore: must_be_immutable
class ContactList extends StatelessWidget {
  ContactList({super.key});
  List<String> names = [
    "Emmanuel Bruz",
    "Darren Gabbuth",
    "Karls Cavalli",
    "Giorgio Cassani",
    "Chris Kramer",
    "James Cooper",
    "Josh Maverick",
  ];

  @override
  Widget build(BuildContext context) {
    final myfav = Provider.of<favoriteProvider>(context);
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: leadImage("assets/images/matt.jpg"),
            title: Text(
              "Jack Roadwell $index",
              style: const TextStyle(
                  fontFamily: "Poppins", color: Colors.deepPurple),
            ),
            subtitle: const Text("+2347048920320"),
            trailing: ElevatedButton.icon(
              onPressed: () {
                myfav.addFavorite(index);
              },
              icon: const Icon(Icons.add),
              label: const Text("Add"),
            ));
      },
    );
  }
}
