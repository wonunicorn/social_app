
import 'dart:io';

import 'package:real_chat_app/feature/data/data_source/remote_data_source.dart';
import 'package:real_chat_app/feature/domain/repository/repository.dart';

class RepositoryImpl extends Repository{

  final RemoteDataSource remoteDataSource;
  RepositoryImpl(this.remoteDataSource);

  @override
  Future<void> createPost(String description, File image) {
    return remoteDataSource.createPost(description, image);
  }

  @override
  Future<void> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }

  @override
  Future<void> logout() {
    return remoteDataSource.logout();
  }

  @override
  Future<void> register(String email, String password, String name) {
    return remoteDataSource.register(email, password, name);
  }

}