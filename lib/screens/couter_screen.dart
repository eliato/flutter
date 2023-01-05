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

class _CounterScreenState
    extends State<CounterScreen> {
  int counter =
      10;
  void
      increase() {
    counter++;
    setState(() {});
  }

  void
      decrease() {
    counter--;
    setState(() {});
  }

  void
      reset() {
    counter =
        0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions
    extends StatelessWidget {
  final Function
      increaseFn;
  final Function
      decreaseFn;
  final Function
      resetFn;
  const CustomFloatingActions({
    Key?
        key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget
      build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(onPressed: () => increaseFn(), child: const Icon(Icons.add)),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.whatsapp),
        ),
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}
