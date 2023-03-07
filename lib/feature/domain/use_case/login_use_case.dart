
import 'package:real_chat_app/feature/domain/repository/repository.dart';

class LoginUseCase{
  final Repository repository;

  LoginUseCase(this.repository);

  Future<void> call(String email, String password) async {
    return repository.login(email, password);
  }
}