import 'package:flutter/material.dart';
import 'package:batch_30a/model/circle.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  double radius = 0;
  double area = 0;

  late Circle acircle;

  void AreaOfCircle() {
    acircle = Circle();
    setState(() {
      area = acircle.AreaOfCircle(radius: radius);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle."),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(height: 8),
          TextField(
            onChanged: (value) {
              radius = double.parse(value);
            },
            decoration: InputDecoration(
              labelText: 'Enter Radius', //hintText can be used as well
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                AreaOfCircle();
              },
              child: const Text('Calculate Area'),
            ),
          ),
          Text(
            'Area is $area',
            style: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
        ]),
      ),
    );
  }
}
