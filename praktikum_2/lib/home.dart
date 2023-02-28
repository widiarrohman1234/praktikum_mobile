import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  String _text = "Ganjil";
  int _nilai = 3;

  void _incrementCounter() {
    setState(() {
      _counter++;
      // if (_counter > 10) {
      //   _counter = 1;
      // }

      // if (_counter % 2 == 0) {
      //   _text = "Genap";
      // } else {
      //   _text = "Ganjil";
      // }

      // if (_counter % 2 == 0) {
      //   _text = "Genap";
      // } else {
      //   _text = "Ganjil";
      // }
//Buat program untuk menampilkan bilangan genap kelipatan 3 mulai dari 1 sampai n!
      // _text = "Ganjil: ";
      // for (int i = 0; i <= _counter; i++) {
      //   if (i == 0) {
      //     _text += '';
      //   } else if (i == 1) {
      //     _text += ' ${i}, ';
      //   } else {
      //     if (i % 3 == 0) {
      //       if (i % 2 == 0) {
      //         _text += ' ${i}, ';
      //       }
      //     }
      //   }
      // }

// Buatlah program untuk menampilkan bilangan prima mulai dari 1 sampai n!
      _text = "Prima: ";
      for (int i = 1; i < _counter; i++) {
        int bil = 0;
        for (var j = 1; j <= i; j++) {
          if (i % j == 0) {
            bil = bil + 1;
          }
        }
        if (bil == 2) {
          _text += ' ${i}, ';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Prima: ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              ' $_counter ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
