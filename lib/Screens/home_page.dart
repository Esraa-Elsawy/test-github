import 'dart:io';
import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/photo_expandableFAB.dart';
import 'package:image_picker/image_picker.dart';
import 'package:graduation_project/Screens/action_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File _image = File('');
  final picker = ImagePicker();

  Future getImage(int i) async {
    final pickedFile = (i==0)? await picker.getImage(source: ImageSource.camera) : await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read me'),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
      floatingActionButton: PhotoExpandableFAB(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () async => await getImage(0),
            icon: const Icon(Icons.photo_camera_rounded),
          ),
          ActionButton(
            onPressed: () async => await getImage(1),
            icon: const Icon(Icons.add_photo_alternate),
          ),
        ],
      )
    );
  }
}
