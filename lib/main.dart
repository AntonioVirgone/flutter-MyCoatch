import 'package:flutter/material.dart';
import 'package:my_coatch/header.dart';
import 'package:my_coatch/other.dart';
import 'package:my_coatch/properties.dart';
import 'package:my_coatch/training.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext builderContext) => Container(
          padding: const EdgeInsets.only(top: 50),
          decoration: const BoxDecoration(color: bgColorAppDark),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              HeaderSection(),
              TrainingCardsSection(),
              OtherCardSection(),
            ],
          ),
        ),
      ),
    );
  }
}
