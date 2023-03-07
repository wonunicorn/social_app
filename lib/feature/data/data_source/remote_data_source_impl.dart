import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:real_chat_app/feature/data/data_source/remote_data_source.dart';

class RemoteDataSourceImpl extends RemoteDataSource{

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final FirebaseStorage firebaseStorage;

  RemoteDataSourceImpl(this.firebaseAuth, this.firebaseFirestore, this.firebaseStorage);

  @override
  Future<void> login(String email, String password) async{
    try{
      await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    }catch(error){
      //throw ServerException();
    }
  }

  @override
  Future<void> logout() async{
    await firebaseAuth.signOut();
  }

  @override
  Future<void> register(String email, String password, String name) async{
    try{
      final UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

      await firebaseFirestore.collection("users").doc(userCredential.user!.uid).set({
        "userId": userCredential.user!.uid,
        "name": name,
        "email": email
      });

      userCredential.user!.updateDisplayName(name);
    }catch(e){
      //throw ServerException();
    }
  }

  @override
  Future<void> createPost(String description, File image) async{
    late String imageUrl;

    await firebaseStorage.ref("images/${UniqueKey().toString()}.png").putFile(image).then((taskSnapshot) async{
      imageUrl = await taskSnapshot.ref.getDownloadURL();
    });

    FirebaseFirestore.instance.collection("posts").add({
      'timeStamp' : Timestamp.now(),
      "userId" : FirebaseAuth.instance.currentUser!.uid,
      "description" : description,
      "userName" : FirebaseAuth.instance.currentUser!.displayName,
      "imageUrl" : imageUrl,
    }).then((value) => value.update({
      "postId" : value.id
    }));
  }

}