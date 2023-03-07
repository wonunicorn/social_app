import 'package:real_chat_app/feature/domain/repository/repository.dart';

class RegisterUseCase{
  final Repository repository;

  RegisterUseCase(this.repository);

  Future<void> call(String email, String password, String name) async {
    return repository.register(email, password, name);
  }
}