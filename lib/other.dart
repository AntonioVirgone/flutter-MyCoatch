import 'package:flutter/material.dart';
import 'package:my_coatch/properties.dart';

class OtherCardSection extends StatelessWidget {
  const OtherCardSection({
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
            child: Text(
              "Altro",
            ),
          ),
        ),
        const OtherCards(),
      ],
    );
  }
}

class OtherCards extends StatelessWidget {
  static const double boxWidth = 150.0;
  static const double boxHeight = 120.0;

  const OtherCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                OtherCard(
                  title: "Diario cibo",
                  boxWidth: boxWidth,
                  boxHeight: boxHeight,
                  bgColor: bgColorSectionDark,
                  iconData: Icons.fastfood,
                  textColor: Colors.white,
                ),
                OtherCard(
                  title: "Diario bici",
                  boxWidth: boxWidth,
                  boxHeight: boxHeight,
                  bgColor: bgColorSectionDark,
                  iconData: Icons.bike_scooter,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              OtherCard(
                title: "Diario gioco",
                boxWidth: boxWidth,
                boxHeight: boxHeight,
                bgColor: bgColorSectionDark,
                iconData: Icons.play_arrow,
                textColor: Colors.white,
              ),
              OtherCard(
                title: "Diario Salute",
                boxWidth: boxWidth,
                boxHeight: boxHeight,
                bgColor: bgColorSectionDark,
                iconData: Icons.monitor_heart_rounded,
                textColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OtherCard extends StatelessWidget {
  const OtherCard({
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
    return Container(
      width: boxWidth,
      height: boxHeight,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 40,
              color: textColor,
            ),
            DefaultTextStyle(
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}
