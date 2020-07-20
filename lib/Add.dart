import 'package:flutter/material.dart';

void main() => runApp(AddPage());

class AddPage extends StatelessWidget {
  static const routeName = '/AddPage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Photo'),
        ),
      ),
    );
  }
}
