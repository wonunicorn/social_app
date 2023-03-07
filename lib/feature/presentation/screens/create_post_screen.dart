import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_chat_app/feature/domain/use_case/use_case.dart';
import 'package:real_chat_app/service_locator.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);
  static const String id = "create_post_screen";

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  String _description = "";

  @override
  Widget build(BuildContext context) {
    final File imageFile = ModalRoute.of(context)!.settings.arguments as File;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create post"),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(imageFile),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                TextField(
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: "Enter a description",
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(150), //limit number of characters
                  ],
                  onEditingComplete: (){
                    FocusScope.of(context).unfocus();
                    if(_description.trim().isNotEmpty){
                      serviceLocator<CreatePostUseCase>().call(_description, imageFile).then((value) => Navigator.of(context).pop());
                    }
                  },
                  onChanged: (value){
                    _description = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
