import 'package:flutter/material.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({super.key});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  int? result;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as int?;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Result is : ${result.toString()}',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
