import 'dart:io';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
class Uplodeflash extends StatefulWidget {
  const Uplodeflash({super.key});

  @override
  State<Uplodeflash> createState() => _UplodeflashState();
}

class _UplodeflashState extends State<Uplodeflash> {
  File? selectedFile;
  TextEditingController videolinkController=TextEditingController();
  TextEditingController fileNameController = TextEditingController();

  // File Picker Logic
  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.path != null) {
      setState(() {
        selectedFile = File(result.files.single.path!);
        fileNameController.text = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Exit"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Uploade Your Resources",style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Text("Past video link",),
              SizedBox(height: 8,),

              TextField(
                controller: videolinkController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.link, size: 18),
                      SizedBox(width: 6),
                      Text("Paste link here"),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 15),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey.shade50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Title
                const Text(
                  "Upload File here.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 6),

                // Description
                Text(
                  "Lorem ipsum dolor sit amet consectetur Velit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),

                const SizedBox(height: 20),

                // Upload Buttons
                OutlinedButton(
                  onPressed: pickFile, // File picker logic here
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.file_upload_outlined, size: 22),
                      SizedBox(width: 8),
                      Text(
                        "Upload File",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),



          ],
          ),
        ),
      ),
    );
  }
}

