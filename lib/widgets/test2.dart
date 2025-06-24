import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  String filePathText = "";
  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ["jpg", "pdf", "png"],
    );

    if (result != null && result.files.single.path != null) {
      ///Load result and file details
      ///
      PlatformFile file = result.files.first;
      print(file.name);
      print(file.bytes);
      print(file.path);
      print(file.size);

      File nomarlfile = File(result.files.single.path!);

      setState(() {
        filePathText = file.path!;
      });
    } else {
      /// User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                pickFile();
              },
              child: Text("upload here")),
          Text(filePathText),
        ],
      ),
    );
  }
}
