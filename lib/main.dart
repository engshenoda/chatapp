import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/screens/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:chatapp/screens/splach_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplachScreen(),
      routes: {
        RegisterPage.id: (context) => const RegisterPage(),
      },
      initialRoute: 'LoginPage',
      debugShowCheckedModeBanner: false,
    );
  }
}
