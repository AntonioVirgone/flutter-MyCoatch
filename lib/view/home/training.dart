import 'package:flutter/material.dart';
import 'package:my_coatch/properties.dart';

import '../../model/training_argument.dart';

class TrainingCardsSection extends StatelessWidget {
  const TrainingCardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.only(top: 30, left: 30),
            alignment: Alignment.topLeft,
            child: const DefaultTextStyle(
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              child: Text("Allenamenti"),
            )),
        const TrainingCards(),
      ],
    );
  }
}

class TrainingCards extends StatelessWidget {
  static const double boxWidth = 110.0;
  static const double boxHeight = 110.0;

  const TrainingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              TrainingCard(
                title: "Scheda A",
                boxWidth: boxWidth,
                boxHeight: boxHeight,
                bgColor: palete1,
                iconData: Icons.sports_gymnastics_sharp,
                textColor: Colors.black87,
              ),
              TrainingCard(
                title: "Scheda B",
                boxWidth: boxWidth,
                boxHeight: boxHeight,
                bgColor: palete2,
                iconData: Icons.sports_martial_arts,
                textColor: Colors.black87,
              ),
              TrainingCard(
                title: "Scheda C",
                boxWidth: boxWidth,
                boxHeight: boxHeight,
                bgColor: palete3,
                iconData: Icons.sports_handball,
                textColor: Colors.black87,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.title,
    required this.boxWidth,
    required this.boxHeight,
    required this.bgColor,
    required this.iconData,
    required this.textColor,
  });

  final String title;
  final double boxWidth;
  final double boxHeight;
  final Color bgColor;
  final IconData iconData;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/example_list',
          arguments: TrainingArgument(title, "hello world", bgColor),
        );
      },
      child: Container(
        width: boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  iconData,
                  size: 40,
                  color: textColor,
                ),
              ),
              DefaultTextStyle(
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
                child: Text(title),
              )
            ],
          ),
        ),
      ),
    );
  }
}