import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Claim Assist Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/voice-input');
              },
              child: Text('Describe Incident'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/photo-analysis');
              },
              child: Text('Upload Photos'),
            ),
          ],
        ),
      ),
    );
  }
}
