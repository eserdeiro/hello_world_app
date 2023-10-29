import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String textClick = "Clicks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(clickCounter.toString(),
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100)),
            Text('Click${clickCounter == 1 ? "" : "s"}',
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w100))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(
        onPressed: () {
          if(clickCounter == 0) return;
          clickCounter--;
          setState(() { });
        },
        child: const Icon(Icons.exposure_minus_1),
      ),
      
      const SizedBox(height: 10),

      FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() { });
        },
        child: const Icon(Icons.plus_one),
      ),

      const SizedBox(height: 10),

      FloatingActionButton(
        onPressed: () {
          clickCounter = 0;
          setState(() { });
        },
        child: const Icon(Icons.refresh_outlined),
      ),
      ],)
    );
  }
}
