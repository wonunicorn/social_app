
// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real_chat_app/feature/domain/entities/model.dart';
import 'package:real_chat_app/feature/presentation/widgets.dart';
import 'package:real_chat_app/service_locator.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  static const String id = "chat_screen";
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String _message = "";
  late final TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Post post = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: serviceLocator<FirebaseFirestore>().collection("posts")
                    .doc(post.id).collection("comments").orderBy("timeStamp")
                    .snapshots(),
                builder: (context, snapshot){
                  if(snapshot.hasError){
                    return const Center(child: Text("Error"),);
                  }
                  if(snapshot.connectionState == ConnectionState.waiting || snapshot.connectionState == ConnectionState.none){
                    return const Center(child: CircularProgressIndicator(),);
                  }
                  return ListView.builder(
                      itemCount: snapshot.data?.docs.length ?? 0,
                      itemBuilder: (context, index){

                        final QueryDocumentSnapshot doc = snapshot.data!.docs[index];
                        final ChatModel chat = ChatModel(
                            timestamp: doc['timeStamp'],
                            userName: doc['userName'],
                            userId: doc['userId'],
                            message: doc['message']
                        );
                        return Align(
                          alignment: chat.userId == serviceLocator<FirebaseAuth>().currentUser!.uid ? Alignment.centerRight : Alignment.bottomLeft,
                            child: MessageListTile(
                              chatModel: chat,
                            ),
                        );
                      }
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: TextField(
                          controller: textEditingController,
                          maxLines: 2,
                          decoration: const InputDecoration(
                            hintText: "Enter message",
                          ),
                          onChanged: (value){
                            _message = value;
                          },
                        ),
                      )),
                  IconButton(
                      onPressed: (){
                        serviceLocator<FirebaseFirestore>().collection("posts").doc(post.id).collection("comments").add({
                          "userId" : FirebaseAuth.instance.currentUser!.uid,
                          "userName" : FirebaseAuth.instance.currentUser!.displayName,
                          "message" : _message,
                          "timeStamp" :  Timestamp.now(),
                        }).then((value) => print("chat doc added")).catchError((error) => print(error));

                        setState(() {
                          _message = "";
                        });
                        textEditingController.clear();
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
