import 'dart:io';
import 'package:real_chat_app/feature/domain/repository/repository.dart';

class CreatePostUseCase{
  final Repository repository;

  CreatePostUseCase(this.repository);

  Future<void> call(String description, File image) async {
    return repository.createPost(description, image);
  }
}