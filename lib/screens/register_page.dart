import 'package:chatapp/constans.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:chatapp/widget/custom_bottom.dart';
import 'package:chatapp/widget/custom_text_feild.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String id = 'RegisterPage';
  @override
  State<RegisterPage> createState() => _HomePageState();
}

class _HomePageState extends State<RegisterPage> {
  String? email;
  String? password;
  // String? code;
  // String? newPassword;

  bool showPass = false;
  bool showConfirm = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  showConfPass() {
    setState(() {
      showConfirm = !showConfirm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimartColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/scholar.png',
              width: 100,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'scholar chat',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomTextFeild(
              prefixIcon: Icon(Icons.person),
              hintText: 'Full Name',
              obscureText: false,
              // onChanged: (data) {
              //   name = data;
              // },
            ),
            CustomTextFeild(
              prefixIcon: Icon(Icons.email),
              hintText: 'Email',
              obscureText: false,
              onChanged: (data) {
                password = data;
              },
            ),
            CustomTextFeild(
              prefixIcon: const Icon(Icons.lock),
              hintText: 'Password',
              obscureText: showPass ? false : true,
              onPressed: showPassword,
              icon: showPass ? Icons.visibility_off : Icons.visibility,
              onChanged: (data) {
                password = data;
              },
            ),
            CustomTextFeild(
              prefixIcon: const Icon(Icons.lock),
              hintText: 'Conform Password',
              obscureText: showConfirm ? false : true,
              onPressed: showConfPass,
              icon: showPass ? Icons.visibility_off : Icons.visibility,
              //  onChanged: (data) {
              //   code = data;
              //   newPassword = data;
              //       },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomBottom(
              text: 'Register',
              color: Color(0xff2ECC71),
              onTap: () async {
                var auth = FirebaseAuth.instance;
                UserCredential user = await auth.createUserWithEmailAndPassword(
                  email: email!,
                  password: password!,
                );
                print(user.user!.displayName);
                // auth.confirmPasswordReset(
                //   code: code!,
                //   newPassword: newPassword!,
                // );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      'I Have an account ?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'LogIn',
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 185, 121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
