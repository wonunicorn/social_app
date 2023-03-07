import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:real_chat_app/feature/data/data_source/remote_data_source.dart';
import 'package:real_chat_app/feature/data/data_source/remote_data_source_impl.dart';
import 'package:real_chat_app/feature/data/repository/repository_impl.dart';
import 'package:real_chat_app/feature/domain/use_case/use_case.dart';
import 'package:real_chat_app/feature/presentation/bloc/auth_cubit.dart';


final serviceLocator = GetIt.instance;

void init(){
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final firebaseStorage = FirebaseStorage.instance;

  serviceLocator.registerLazySingleton(() => auth);
  serviceLocator.registerLazySingleton(() => firestore);
  serviceLocator.registerLazySingleton(() => firebaseStorage);

  serviceLocator.registerFactory(() => AuthCubit(serviceLocator(), serviceLocator(), serviceLocator()));
  
  serviceLocator.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(serviceLocator(), serviceLocator(), serviceLocator()));
  serviceLocator.registerLazySingleton<RepositoryImpl>(() => RepositoryImpl(serviceLocator()));

  serviceLocator.registerLazySingleton<LoginUseCase>(() => LoginUseCase(serviceLocator()));
  serviceLocator.registerLazySingleton<RegisterUseCase>(() => RegisterUseCase(serviceLocator()));
  serviceLocator.registerLazySingleton<LogoutUseCase>(() => LogoutUseCase(serviceLocator()));
  serviceLocator.registerLazySingleton<CreatePostUseCase>(() => CreatePostUseCase(serviceLocator()));
}