import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/images/login.png'),
            ),
            Image.network(
              'https://e0.365dm.com/23/03/768x432/skysports-lionel-messi-argentina_6098577.jpg?20230324072611',
              fit: BoxFit.fitHeight,
            ),
            const CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                'https://e0.365dm.com/23/03/768x432/skysports-lionel-messi-argentina_6098577.jpg?20230324072611',
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// } Image.network(
//               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ4_0fSYUBIauNsh3x8GrA6TDXtsJMwc65JQ&usqp=CAU',
//               fit: BoxFit.fitHeight,
//             ),