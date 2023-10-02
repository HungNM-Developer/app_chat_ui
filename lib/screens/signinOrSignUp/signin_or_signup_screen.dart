import 'package:flutter/material.dart';

import '../../components/primary_button.dart';
import '../../constants.dart';
import '../chats/chats_screen.dart';
import 'login_screen.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                "assets/images/chat_bubble.png",
                width: MediaQuery.of(context).size.width * 0.7,
                // MediaQuery.of(context).platformBrightness == Brightness.light
                //     ? "assets/images/Logo_light.png"
                //     : "assets/images/Logo_dark.png",
                // height: 146,
              ),
              const Spacer(),
              PrimaryButton(
                  text: "Sign In",
                  color: Colors.white,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const ChatsScreen(),
                  //   ),
                  // ),
                  ),
              const SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Colors.white,
                text: "Sign Up",
                press: () {},
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
