import 'package:flutter/material.dart';
import 'package:my_coatch/properties.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const DefaultTextStyle(
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              child: Text(
                "Hello, Antonio",
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: bgColorSectionDark,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                Image.asset(
                  "images/avatar.png",
                  scale: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      DefaultTextStyle(
                        style: const TextStyle(
                          color: palete1,
                          fontSize: 12,
                        ),
                        child: Text(
                          "la data di oggi".toUpperCase(),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                        child: Text(
                          toDate(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //const TrainingCards(),
        ],
      ),
    );
  }

  String toDate() {
    var now = DateTime.now();
    return '${now.day}/${now.month}/${now.year}, ${now.hour}:${now.minute}';
  }
}
