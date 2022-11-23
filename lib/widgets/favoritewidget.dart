import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:statemyapp/provider.dart/counter.dart';
// ignore: duplicate_import
import 'package:provider/provider.dart';
import 'package:statemyapp/provider.dart/favorite_provider.dart';

import '../provider.dart/util.dart';

class LaundryWidget extends StatefulWidget {
  const LaundryWidget({super.key});

  @override
  State<LaundryWidget> createState() => _LaundryWidgetState();
}

class _LaundryWidgetState extends State<LaundryWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<favoriteProvider>(builder: ((context, index, child) {
      return ListView.builder(
        itemCount: index.favoriteContacts.length,
        itemBuilder: (context, i) {
          return ListTile(
              leading: leadImage("assets/images/matt.jpg"),
              title: Text(
                "User ${index.favoriteContacts[i]}",
                style: const TextStyle(
                    fontFamily: "Poppins", color: Colors.deepPurple),
              ),
              subtitle: const Text("+2347048920320"),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<favoriteProvider>(context, listen: false)
                      .removeFavorite(i);
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
