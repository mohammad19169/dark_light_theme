import 'package:dark_light_app/screens/details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;

  const HomeScreen({required this.isDarkTheme, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          Row(
            children: [
              Icon(Icons.light_mode),
              Switch(
                value: isDarkTheme,
                onChanged: onThemeChanged,
              ),
              Icon(Icons.dark_mode),
            ],
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen()),
            );
          },
          child: Text('Go to Details Screen'),
        ),
      ),
    );
  }
}

