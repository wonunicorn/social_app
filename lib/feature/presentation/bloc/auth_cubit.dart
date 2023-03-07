import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_chat_app/feature/domain/use_case/use_case.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState>{

  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final LogoutUseCase logoutUseCase;

  AuthCubit(this.registerUseCase, this.logoutUseCase, this.loginUseCase) : super(const AuthState.initial());

  Future<void> userLogin({required String email, required String password}) async{
    emit(const AuthState.loading());
    try{
      loginUseCase.call(email, password);
      emit(const AuthState.loggedin());
    }on FirebaseAuthException catch (e){
      if(e.code == "user-not-found"){
        emit(const AuthState.error(message: "No user found for that email"));
      }else if(e.code == "wrong-password"){
        emit(const AuthState.error(message: "Wrong password provided for that user"));
      }
    }
    catch(error){
      emit(AuthState.error(message: error.toString()));
    }
  }

  Future<void> userRegister({required String email, required String password, required String name}) async{
    emit(const AuthState.loading());
    try{
      registerUseCase.call(email, password, name);
      emit(const AuthState.registered());
    }on FirebaseAuthException catch (e){
      if(e.code == "weak-password"){
        emit(const AuthState.error(message: "The password provided is too weak"));
      }else if(e.code == "email-already-is-use"){
        emit(const AuthState.error(message: "The account already exists for that email"));
      }
    }catch(error){
      emit(AuthState.error(message: error.toString()));
    }
  }

  Future<void> userLoggedOut() async{
    logoutUseCase.call();
  }
}