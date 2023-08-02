import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'model/counter_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterDemo(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
