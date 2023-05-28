import 'package:flutter/material.dart';
import 'package:my_coatch/properties.dart';
import 'header.dart';
import 'other.dart';
import 'training.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
