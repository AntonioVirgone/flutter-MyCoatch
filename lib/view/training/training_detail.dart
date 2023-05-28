import 'package:flutter/material.dart';
import 'package:my_coatch/properties.dart';

import '../../model/training_argument.dart';

class TrainingDetail extends StatelessWidget {
  const TrainingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as TrainingArgument;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        title: Text(
          args.title,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: args.bgColor,
      ),
      backgroundColor: bgColorAppDark,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(args.message),
        ),
      ),
    );
  }
}
