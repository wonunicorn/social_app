import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real_chat_app/feature/domain/entities/model.dart';
import 'package:real_chat_app/service_locator.dart';

class MessageListTile extends StatelessWidget {
  MessageListTile({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  final currentUser = serviceLocator<FirebaseAuth>().currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
          bottomLeft: chatModel.userId == currentUser ? const Radius.circular(15) : const Radius.circular(0),
          bottomRight: chatModel.userId == currentUser ? const Radius.circular(0) : const Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: chatModel.userId == currentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        mainAxisAlignment: chatModel.userId == currentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Text("By ${chatModel.userName}", style: const TextStyle(color: Colors.black),),
          const SizedBox(height: 4,),
          Text(chatModel.message, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
