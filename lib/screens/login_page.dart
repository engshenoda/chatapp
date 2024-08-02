import 'package:chatapp/constans.dart';
import 'package:chatapp/screens/register_page.dart';

import 'package:flutter/material.dart';

import 'package:chatapp/widget/custom_bottom.dart';
import 'package:chatapp/widget/custom_text_feild.dart';

class LoginPage extends StatefulWidget {
   const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _HomePageState();
}


class _HomePageState extends State<LoginPage> {
  bool showPass = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
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
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFeild(
              prefixIcon: Icon(Icons.person),
              hintText: 'enter your name',
              obscureText: false,
            ),
            CustomTextFeild(
              prefixIcon: const Icon(Icons.lock),
              hintText: 'Password',
              obscureText: showPass ? false : true,
              onPressed: showPassword,
              icon: showPass ? Icons.visibility_off : Icons.visibility,
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget Password ?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomBottom(
              text: 'Log In',
              color: Color(0xff2ECC71),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Or sign in With',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Image.asset(
                    'assets/images/devicon_google.png',
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Image.asset(
                    'assets/images/logos_facebook.png',
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Image.asset(
                    'assets/images/pajamas_twitter.png',
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Image.asset(
                    'assets/images/logos_linkedin-icon.png',
                    width: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dont have account ? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 185, 121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
