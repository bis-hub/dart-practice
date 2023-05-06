import 'package:flutter/material.dart';
import 'package:batch_30a/model/display_name.dart';

class DisplayNameView extends StatefulWidget {
  const DisplayNameView({super.key});

  @override
  State<DisplayNameView> createState() => _DisplayNameViewState();
}

class _DisplayNameViewState extends State<DisplayNameView> {
  int counter = 0;
  String name = "Enter";
  late Name obj;

  void displayName() {
    obj = Name();
    setState(() {
      name = obj.displayName(counter++);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            displayName();
          },
          child: Text('($name)'),
        ),
      ),
    ));
  }
}
