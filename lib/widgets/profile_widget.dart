import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:statemyapp/provider.dart/utility.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 222, 241),
      body: SafeArea(
          child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        profileImage("assets/images/matt.jpg"),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "Mathias Dukes",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Favorites"),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Container(
          height: 328,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: ListView(children: const [
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.chat),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "Start a Chat",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.account_box),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "Expect replies",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.star),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "Review ratings",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.question_mark),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "Asked Questions",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ]),
        ),
      ])),
    );
  }
}
