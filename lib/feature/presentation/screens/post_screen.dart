import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:real_chat_app/feature/domain/entities/model.dart';
import 'package:real_chat_app/feature/presentation/bloc/auth_cubit.dart';
import 'package:real_chat_app/feature/presentation/screens.dart';
import 'package:real_chat_app/service_locator.dart';
import 'package:image_picker/image_picker.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);
  static const String id = "post_screen";

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                final picker = ImagePicker();
                picker.pickImage(source: ImageSource.gallery, imageQuality: 40).then((value){
                  if(value != null){
                    final file = File(value.path);
                    Navigator.of(context).pushNamed(CreatePostScreen.id, arguments: file);}
                });
              },
              icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: (){
              serviceLocator<AuthCubit>().userLoggedOut();
              },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: serviceLocator<FirebaseFirestore>().collection("posts").snapshots(),
        builder: (context, snapshot){
          if(snapshot.hasError){
            return const Center(child: Text("error"),);
          }
          if(snapshot.connectionState == ConnectionState.waiting || snapshot.connectionState == ConnectionState.none){
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
              itemCount: snapshot.data?.docs.length ?? 0,
              itemBuilder: (context, index){
                final QueryDocumentSnapshot doc = snapshot.data!.docs[index];
                final Post post = Post(
                    timestamp: doc['timeStamp'],
                    id: doc['postId'],
                    description: doc['description'],
                    imageUrl: doc['imageUrl'],
                    userId: doc['userId'],
                    userName: doc['userName']);
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(ChatScreen.id, arguments: post);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(post.imageUrl),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(post.userName, style: Theme.of(context).textTheme.headline5),
                        const SizedBox(height: 5,),
                        Text(post.description, style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                );

              });
        },
      ), 
    );
  }
}
