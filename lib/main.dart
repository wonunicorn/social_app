import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_chat_app/feature/presentation/bloc/auth_cubit.dart';
import 'package:real_chat_app/feature/presentation/screens.dart';
import 'package:real_chat_app/service_locator.dart' as sl;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  sl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildHomeScreen(){
    return StreamBuilder<User?>(
      stream: sl.serviceLocator<FirebaseAuth>().authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return const PostScreen();
          }else{
            return const LoginScreen();
          }
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => sl.serviceLocator<AuthCubit>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        initialRoute: LoginScreen.id,
        home: _buildHomeScreen(),
        routes: {
          LoginScreen.id : (context) => const LoginScreen(),
          RegisterScreen.id : (context) => const RegisterScreen(),
          PostScreen.id : (context) => const PostScreen(),
          CreatePostScreen.id : (context) => const CreatePostScreen(),
          ChatScreen.id : (context) => const ChatScreen(),
        },
      ),
    );
  }
}

