import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

import '../../model/training_argument.dart';
import '../../properties.dart';

class JsonList extends StatefulWidget {
  const JsonList({Key? key}) : super(key: key);

  @override
  State<JsonList> createState() => _HomePageState();
}

class _HomePageState extends State<JsonList> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('resources/sample.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: _items.isNotEmpty
            ? ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return MessageItem(_items[index]["name"],
                      _items[index]["description"], args.bgColor);
                },
              )
            : Container(),
      ),
    );
  }
}

class MessageItem extends StatelessWidget {
  final String sender;
  final String body;
  final Color bgColor;

  const MessageItem(this.sender, this.body, this.bgColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(body);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 10),
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
}
