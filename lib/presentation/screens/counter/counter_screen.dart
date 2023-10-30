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
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w100)),
            Text(clickCounter >=  99 ? "u have reached the limit :)" : "",
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
       const SizedBox(width: 35),
      CounterWidgets(icon: Icons.exposure_minus_1_outlined,
      onPressed: (){
        if(clickCounter == 0) return;
          clickCounter--;
        setState(() { });
      }),
      //const SizedBox(height: 10),
      CounterWidgets(icon: Icons.plus_one,
      onPressed: (){
        if(clickCounter == 99) return;
         clickCounter++;
        setState(() { });
      }),
      //const SizedBox(height: 10),
      CounterWidgets(icon: Icons.refresh_outlined,
      onPressed: (){
         clickCounter = 0;
        setState(() {  });
      }),
      const SizedBox(height: 1),
      ],)
    );
  }
}

class CounterWidgets extends StatelessWidget {
final IconData icon;
final VoidCallback? onPressed;

  const CounterWidgets({
    super.key,
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
