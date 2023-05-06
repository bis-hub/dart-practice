import 'package:batch_30a/view/arithemtic_view.dart';
import 'package:batch_30a/view/circle_view.dart';
import 'package:batch_30a/view/column_view.dart';
import 'package:batch_30a/view/container_view.dart';
import 'package:batch_30a/view/dashboard.dart';
import 'package:batch_30a/view/display_view.dart';
import 'package:batch_30a/view/load_image_view.dart';
import 'package:batch_30a/view/rich_text_view.dart';
import 'package:batch_30a/view/screen_view.dart';
import 'package:batch_30a/view/si_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: DashBoard(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const DashBoard(),
          '/arithmeticRoute': (context) => const ArithmeticView(),
          '/siRoute': (context) => const SimpleInterestView(),
          '/ciRoute': (context) => const CircleView(),
          '/diRoute': (context) => const DisplayNameView(),
          '/ritRoute': (context) => const RichTextView(),
          '/coRoute': (context) => const CloumnView(),
          '/svRoute': (context) => ScreenView(),
          '/conRoute': (context) => const ContainerView(),
          '/loRoute': (context) => const ImageView(),
        });
  }
}
