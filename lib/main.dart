import 'package:flutter/material.dart';
import 'package:flutter_generics/views/home_screen_view.dart';

void main() => runApp(const FlutterGenerics());

class FlutterGenerics extends StatelessWidget {
  const FlutterGenerics({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Generics',
      theme: ThemeData.dark(),
      home: const HomeScreenView(),
    );
  }
}
