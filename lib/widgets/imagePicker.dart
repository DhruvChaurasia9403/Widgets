import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePic extends StatefulWidget {
  const ImagePic({super.key});

  @override
  State<ImagePic> createState() => _ImagePicState();
}

class _ImagePicState extends State<ImagePic> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  List<XFile>? _images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey.shade200,
              child: Center(
                child: _image == null
                    ? const Text(
                  'No Image Selected',
                  style: TextStyle(fontSize: 20),
                )
                    : Image.file(
                  File(_image!.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
                  if (photo != null) {
                    setState(() {
                      _image = photo;
                    });
                    print('Image picked');
                  } else {
                    print('No image selected.');
                  }
                } catch (e) {
                  print('Error picking image: $e');
                }
              },
              child: const Text('Pick Image'),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  _images = photos;
                });
                for(int i = 0; i < _images!.length; i++){
                  print({_images![i].path});
                }
              },
              child: const Text('Pick Images'),
            ),
          ],
        ),
      ),
    );
  }
}
