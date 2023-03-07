
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_chat_app/feature/presentation/bloc/auth_cubit.dart';
import 'package:real_chat_app/feature/presentation/screens.dart';
import 'package:real_chat_app/service_locator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _submit(BuildContext context){
    FocusScope.of(context).unfocus();
    if(_formKey.currentState!.validate()){
      return;
    }else{
      _formKey.currentState!.save();
      serviceLocator<AuthCubit>().userLogin(email: email, password: password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (prevState, currentState){
          currentState.whenOrNull(
            error: (msg){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(msg),
                    duration: const Duration(seconds: 2),
                  ));
            }
          );
        },
        builder: (context, state){
          state.whenOrNull(
            loading: () => const Center(child: CircularProgressIndicator(),),
          );
          return SafeArea(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Text(
                          "Social Media App",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (_){
                          FocusScope.of(context).requestFocus(_passwordFocusNode);
                        },
                        textInputAction: TextInputAction.next,
                        onSaved: (value){
                          email = value!.trim();
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter your email";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            labelText: "Enter your email",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        focusNode: _passwordFocusNode,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        onFieldSubmitted: (_){
                          _submit(context);
                        },
                        onSaved: (value){
                          password = value!.trim();
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter your password";
                          }
                          if(value.length < 5){
                            return "Please enter longer password";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            labelText: "Enter your password",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextButton(
                        onPressed: (){
                          _submit(context);
                        },
                        child: const Text("Sign in"),
                      ),
                      const SizedBox(height: 15,),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacementNamed(RegisterScreen.id);

                        },
                        child: const Text("Sign Up instead"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
