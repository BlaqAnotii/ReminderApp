import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemyapp/provider.dart/favorite_provider.dart';
import 'package:statemyapp/screen/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => favoriteProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
