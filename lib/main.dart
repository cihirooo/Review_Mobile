import 'package:flutter/material.dart';
import 'package:flutter_6/controller/main_controller.dart';
import 'package:flutter_6/pages/home_page.dart';
import 'package:provider_base_tools/provider_base_tools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        title: 'To Do List',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:TasksScreen(),
      ),
    );
  }
}