import 'package:chatapp/cubits/chat_cubit/chat_cubit.dart';
import 'package:chatapp/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:chatapp/cubits/log_in_cubit/login_cubit.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/pages/chat_page.dart';
import 'package:chatapp/pages/login_page.dart';
import 'package:chatapp/pages/Sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => SignUpCubit()),
        BlocProvider(create: (context) => ChatCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id: (context) => ChatPage()
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
