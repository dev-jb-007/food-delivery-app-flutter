import 'package:delivery_app/home/food_main_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
//1:15 Part 1
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
