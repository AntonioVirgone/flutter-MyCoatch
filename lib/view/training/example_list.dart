import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../model/training_argument.dart';
import '../../properties.dart';

class ExampleList extends StatelessWidget {
  final List<ListItem> items = List<ListItem>.generate(
    18,
    (i) => i % 6 == 0
        ? HeadingItem('Circuito $i:')
        : MessageItem('Sender $i', 'Message body $i'),
  );

  ExampleList({super.key});

  Future<void> readJson() async {
    final String response =
    await rootBundle.loadString('resources/sample.json');
    final data = await json.decode(response);

    print(data);
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as TrainingArgument;

    readJson();

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
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: items.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            title: item.buildContent(context, args.bgColor),
            onTap: () {
              print("tapped");
            },
          );
        },
      ),
    );
  }
}

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildContent(BuildContext context, Color bgColor);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildContent(BuildContext context, Color bgColor) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildContent(BuildContext context, Color bgColor) => GestureDetector(
        onTap: () {
          print(body);
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), // <= No more error here :)
            color: bgColor,
          ),
          child: Column(
            children: [
              Text(
                sender,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                sender,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}
