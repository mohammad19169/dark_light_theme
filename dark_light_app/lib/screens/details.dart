import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: Text(
          'This is the Details Screen!',
        style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
