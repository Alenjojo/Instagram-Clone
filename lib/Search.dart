import 'package:flutter/material.dart';

void main() => runApp(SearchPage());

class SearchPage extends StatelessWidget {
  static const routeName = '/SearchPage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search'),
        ),
      ),
    );
  }
}
