import 'package:flutter/material.dart';
import 'package:my_coatch/view/training/example_list.dart';
import 'view/training/training_detail.dart';
import 'view/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/training_detail': (context) => const TrainingDetail(),
        '/example_list': (context) => ExampleList(),
      },
      home: Builder(
        builder: (BuildContext builderContext) => const Home(),
      ),
    );
  }
}
