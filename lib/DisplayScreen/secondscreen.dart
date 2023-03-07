import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          // Container(width: 20,),
          Icon(Icons.add_a_photo),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 146, 81, 16),
        title: const Text('Muhammad Talha'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin:  const EdgeInsets.only(top: 10,bottom: 10),
              width: 150,
              height: 150,
              color: const Color.fromARGB(255, 21, 119, 112),
              child: const Center(
                child: Text('Container Widget',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            Container(
              child: TextButton(
                child: Text('Register?'),
                onPressed: () {
                  print('Text button tapped');
                },
                onLongPress: () {
                  print('LongPressed button');
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
                child: ElevatedButton(
              child: const Text('Play'),
              onPressed: () {
                print('Elevated Button');
              },
            )),
            Container(
              child: OutlinedButton(onPressed: () {
                print('Outlined  button');
              }, child: const Text('Click Me!')),
            ),
            Expanded(
              child: Container(               
                child: Image.asset('assets/Images/flutter.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
