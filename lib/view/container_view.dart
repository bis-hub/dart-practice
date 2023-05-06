import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('container'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        //   backgroundColor: const Color.fromARGB(255, 225, 190, 74),
        // body: SafeArea(
        //   child: Container(
        //     height: 200,
        //     width: 200,
        //     alignment: Alignment.center,
        //     decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: const Color.fromARGB(255, 113, 32, 125),
        //         border: Border.all(
        //           color: Colors.black,
        //           width: 2,
        //         )),
        //     child: const Text('hello world'),
        //   ),
        // ),
      ),
    );
  }
}
