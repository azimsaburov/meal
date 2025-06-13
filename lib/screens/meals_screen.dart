import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ListView(
        children: [
          Text('HEllo'),
          Text('HEllo'),
          Text('HEllo'),
          ElevatedButton(onPressed: null, child: Text('onPressed me')),
        ],
      ),
    );
  }
}
