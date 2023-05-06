import 'package:flutter/material.dart';

class RichTextView extends StatefulWidget {
  const RichTextView({super.key});

  @override
  State<RichTextView> createState() => _RichTextState();
}

class _RichTextState extends State<RichTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Text Calss'),
      //   backgroundColor: colors.bluegrey[900],
      // ),
      body: RichText(
        text: const TextSpan(
            text: "My ",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Name is ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              TextSpan(
                  text: "Bishal",
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.red)),
            ]),
      ),
    );
  }
}
