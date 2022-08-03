import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  File? _image;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildbody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getImage();
        },
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send),
        )
      ],
    );
  }

  _buildbody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _image == null ? const Text('No Image') : Image.file(_image!),
          TextField(
            controller: textEditingController,
            decoration: const InputDecoration(hintText: '내용을 입력하세요'),
          )
        ],
      ),
    );
  }

  Future _getImage() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    } else {}
  }
}
