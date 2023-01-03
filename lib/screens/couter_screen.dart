// ignore: file_names
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CounterScreen
    extends StatefulWidget {
  const CounterScreen(
      {super.key});

  @override
  State<CounterScreen> createState() =>
      _CounterScreenState();
}

int counter =
    10;

class _CounterScreenState
    extends State<CounterScreen> {
  @override
  Widget
      build(BuildContext context) {
    const fontSise =
        TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 5.5,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Numero de Clicks',
              style: fontSise,
            ),
            Text(
              '$counter',
              style: fontSise,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () => setState(() => counter++)),
          FloatingActionButton(
            child: const Icon(Icons.whatsapp),
            onPressed: () => setState(() => counter = 0),
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => setState(() => counter--),
          ),
        ],
      ),
    );
  }
}
