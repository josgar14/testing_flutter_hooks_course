import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'FlutterDemo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

const url =
    'https://imgd.aeplcdn.com/0x0/n/cw/ec/97963/roma-exterior-right-front-three-quarter.jpeg';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = useAppLifecycleState();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Opacity(
          opacity: state == AppLifecycleState.resumed ? 1.0 : 0.0,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withAlpha(100),
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Image.asset('assets/visa.jpg'),
          ),
        ),
      ),
    );
  }
}
