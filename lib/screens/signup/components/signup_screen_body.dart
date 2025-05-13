import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'signup_form.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              signupScreenTitle(),
              signupScreenSubTitle(),
              SizedBox(height: 16.0),
              const SignupForm(),
              SizedBox(height: 24.0),
              loginScreenRedirectLink(
                  context), // if user has an account, redirect them to login screen when they tap the "Login" text
            ],
          ),
        ),
      ),
    );
  }

  Text loginScreenRedirectLink(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: "Already have an account?  ",
        children: [
          TextSpan(
            text: 'Login',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.pushNamed(context, '/login'),
          ),
        ],
      ),
    );
  }

  Text signupScreenSubTitle() {
    return const Text(
      'Simplify your crypto payments with us',
      style: TextStyle(fontSize: 16.0, color: Colors.grey),
      textAlign: TextAlign.start,
    );
  }

  Text signupScreenTitle() {
    return const Text(
      'Create Account',
      style: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }
}
