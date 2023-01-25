import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Gradient Background",style: TextStyle(fontSize: 15),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: AnimateGradient(
        primaryBegin: Alignment.topLeft,
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.bottomLeft,
        secondaryEnd: Alignment.topRight,
        primaryColors: const [
          Colors.purple,
          Colors.deepPurple,
          Colors.pinkAccent,
        ],
        secondaryColors: const [
          Colors.green,
          Colors.red,
          Colors.yellow,
        ],
        child: const Center(
          child: Text(
            'Animated Gradient',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
