import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoAnalysisScreen extends StatefulWidget {
  @override
  _PhotoAnalysisScreenState createState() => _PhotoAnalysisScreenState();
}

class _PhotoAnalysisScreenState extends State<PhotoAnalysisScreen> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      _analyzePhoto();
    }
  }

  void _analyzePhoto() {
    // Placeholder for AI analysis logic
    setState(() {
      // Simulate analysis result
      _analysisResult =
          "Analysis complete: Object identified as 'Example Item'.";
    });
  }

  String _analysisResult = "No analysis yet.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Analysis'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (_image != null)
              Image.file(
                _image!,
                height: 200,
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Capture Photo'),
            ),
            SizedBox(height: 20),
            Text(
              _analysisResult,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
