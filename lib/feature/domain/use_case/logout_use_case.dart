import 'package:real_chat_app/feature/domain/repository/repository.dart';

class LogoutUseCase {
  final Repository repository;

  LogoutUseCase(this.repository);

  Future<void> call() async {
    return repository.logout();
  }
}