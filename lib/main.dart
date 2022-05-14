import 'package:flutter/material.dart';
import 'package:party_ui/pages/home_page.dart';
import 'package:party_ui/pages/part_ui.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const PartUI(),
      routes: {
        PartUI.id:(context)=>const PartUI(),
        HomePage.id:(context)=>const HomePage(),
      },
    );
  }
}


