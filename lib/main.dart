import 'package:flutter/material.dart';
import './home.dart';
///
/// Widget con estado heredan de StateFullWidget y son los widgets que
/// intecartuan con el usuario
///
///Los que no tienen estado StateLessWidget son estaticos
///
///

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
