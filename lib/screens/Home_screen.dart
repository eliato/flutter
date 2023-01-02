// ignore: file_names
import 'package:flutter/material.dart';

class HomeScreen
    extends StatelessWidget {
  const HomeScreen(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    const fontSise =
        TextStyle(fontSize: 30);
    int counter =
        10;
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        elevation: 5.5,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Numero de Clicks',
              style: fontSise,
            ),
            Text(
              '10',
              style: fontSise,
            )
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('hola mundo: $counter');
          counter++;
        },
      ),
    );
  }
}
