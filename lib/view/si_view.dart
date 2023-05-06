import 'package:batch_30a/model/simple.dart';
import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double principle = 0;
  double time = 0;
  double rate = 0;
  double interest = 0;
  final principalController = TextEditingController(text: '33');
  final timeController = TextEditingController(text: '44');
  final rateController = TextEditingController(text: '44');
  // int interest = 0;

  late Simple obj;

  void simpleInterest() {
    obj = Simple();
    setState(() {
      interest =
          obj.simpleInterest(principle: principle, time: time, rate: rate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculate Simple Interest Program"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  principle = double.parse(value);
                },
                decoration: InputDecoration(
                  labelText: "Enter the Principle",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  time = double.parse(value);
                },
                decoration: InputDecoration(
                  labelText: "Enter the Time",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  rate = double.parse(value);
                },
                decoration: InputDecoration(
                  labelText: "Enter the Rate",
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
                    simpleInterest();
                  },
                  child: const Text('Calculate Interest'),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Simple Interest is $interest.',
                style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class SimpleInterestView extends StatefulWidget {
//   const SimpleInterestView({super.key});

//   @override
//   State<SimpleInterestView> createState() => _SimpleInterestViewState();
// }

// class _SimpleInterestViewState extends State<SimpleInterestView> {
//   double principle = 0;
//   double time = 0;
//   double rate = 0;
//   double interest = 0;

//   late Simple obj;

//   void simpleInterest() {
//     obj = Simple();
//     setState(() {
//       interest =
//           obj.simpleInterest(principle: principle, time: time, rate: rate);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Calculate Simple Interest Program"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 8),
//               TextField(
//                 onChanged: (value) {
//                   principle = double.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   labelText: "Enter the Principle",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 onChanged: (value) {
//                   time = double.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   labelText: "Enter the Time",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 onChanged: (value) {
//                   rate = double.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   labelText: "Enter the Rate",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     simpleInterest();
//                   },
//                   child: const Text('Calculate Interest'),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Simple Interest is $interest.',
//                 style: const TextStyle(
//                     fontSize: 20,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

