import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/voice_input_screen.dart';
import 'screens/photo_analysis_screen.dart';

void main() {
  runApp(ClaimAssistApp());
}

class ClaimAssistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Claim Assist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/voice-input': (context) => VoiceInputScreen(),
        '/photo-analysis': (context) => PhotoAnalysisScreen(),
      },
    );
  }
}
