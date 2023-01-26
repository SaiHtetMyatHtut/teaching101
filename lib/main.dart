import 'package:flutter/material.dart';

void main() {
  runApp(const MyDemoApp());
}

class MyDemoApp extends StatefulWidget {
  const MyDemoApp({super.key});

  @override
  State<MyDemoApp> createState() => _MyDemoAppState();
}

class _MyDemoAppState extends State<MyDemoApp> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: isTrue ? Colors.purple : Colors.red,
        body: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isTrue = !isTrue;
                  });
                },
                child: Center(
                  child: Text('Click Me'),
                )),
          ),
        ),
      ),
    );
  }
}
