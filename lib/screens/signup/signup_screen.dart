import 'package:flutter/material.dart';

import 'components/signup_screen_body.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: SignupScreenBody(),
    );
  }
}
