
import 'dart:io';

abstract class RemoteDataSource{
  Future<void> login(String email, String password);
  Future<void> register(String email, String password, String name);
  Future<void> logout();

  Future<void> createPost(String description, File image);

}