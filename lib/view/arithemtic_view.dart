import 'package:batch_30a/model/arithmetic.dart';
import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final firstController = TextEditingController(text: '33');
  final secondController = TextEditingController(text: '44');
  int result = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();

    super.dispose();
  }

  late Arithmetic arithmetic;

  void add() {
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.add(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
    Navigator.pushNamed(
      context,
      '/outputRoute',
      arguments: result,
    );
  }

  // void sub() {
  //   arithmetic = Arithmetic();
  //   setState(() {
  //     result = arithmetic.sub(first, second);
  //   });
  // }

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter first no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first no';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter second no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter second no';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        add();
                      }
                    },
                    child: const Text('ADD'),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //  sub();
                    },
                    child: const Text('SUB'),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Sum is : $result',
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// final -> run time
// const - > compile
// class ArithmeticView extends StatefulWidget {
//   const ArithmeticView({super.key});

//   @override
//   State<ArithmeticView> createState() => _ArithmeticViewState();
// }

// class _ArithmeticViewState extends State<ArithmeticView> {
//   int first = 0;
//   int second = 0;
//   int result = 0;
//   late Arithmetic arithmetic;

//   void add() {
//     arithmetic = Arithmetic();
//     setState(() {
//       result = arithmetic.add(first, second);
//     });
//   }

//   void sub() {
//     arithmetic = Arithmetic();
//     setState(() {
//       result = arithmetic.sub(first, second);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Arithemtic'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 8),
//               TextField(
//                 onChanged: (value) {
//                   first = int.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   hintText: 'Enter first no',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 onChanged: (value) {
//                   second = int.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Enter second no',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('ADD'),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('SUB'),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Sum is : $result',
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ArithmeticView extends StatefulWidget {
//   const ArithmeticView({super.key});

//   @override
//   State<ArithmeticView> createState() => _ArithmeticViewState();
// }

// class _ArithmeticViewState extends State<ArithmeticView> {
//   int first = 0;

//   int second = 0;

//   int result = 0;

//   late Arithmetic arithmetic;

//   void add() {
//     arithmetic = Arithmetic();

//     setState(() {
//       result = arithmetic.add(first, second);
//     });
//   }

//   void sub() {
//     arithmetic = Arithmetic();

//     setState(() {
//       result = arithmetic.sub(first, second);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Arithemtic'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 8),
//               TextField(
//                 onChanged: (value) {
//                   first = int.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   hintText: 'Enter first no',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 onChanged: (value) {
//                   second = int.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Enter second no',
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
//                     setState(() {
//                       add();
//                     });
//                   },
//                   child: const Text('ADD'),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       sub();
//                     });
//                   },
//                   child: const Text('SUB'),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Output is :$result',
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
