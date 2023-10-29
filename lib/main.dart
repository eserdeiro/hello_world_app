import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';
 
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       useMaterial3: true,
       colorSchemeSeed:Colors.purple // Color.fromRGBO(255, 0, 0, 30)
     ),
     debugShowCheckedModeBanner: false,
     home: const CounterScreen(),
   );
  }

}