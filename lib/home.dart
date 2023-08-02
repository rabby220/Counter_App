import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/model/counter_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _title = "Counter App";

  @override
  Widget build(BuildContext context) {
    final counterModelProvider = Provider.of<CounterDemo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: const TextStyle(fontSize: 25.0),
        ),
        leading: const Icon(Icons.settings),
      ),







      //body part
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5.0,
                ),
                onPressed: () {
                  counterModelProvider.increment();
                },
                child: const Icon(Icons.add),
              ),
              Text(counterModelProvider.counter.toString()),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5.0,
                ),
                onPressed: () {
                  counterModelProvider.decrement();
                },
                child: const Icon(Icons.minimize_rounded),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5.0,
                ),
                onPressed: () {
                  counterModelProvider.reset();
                },
                child: const Icon(Icons.restart_alt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
