import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jobs')),
      body: Center(
        child: Text(
          'Jobs Page',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
