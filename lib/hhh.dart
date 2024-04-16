import 'package:flutter/material.dart';



class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Double Tap Button Example'),
        ),
        body: Center(
          child: DoubleTapButton(
            onTap: () {
              // Handle single tap action
              print('Single Tap!');
            },
            onDoubleTap: () {
              // Handle double tap action
              print('Double Tap!');
            },
            key: null,
            child: Text(
              'Press Me!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class DoubleTapButton extends StatelessWidget {
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;
  final Widget child;

  const DoubleTapButton({
    required key,
    required this.onTap,
    required this.onDoubleTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: child,
    );
  }
}
