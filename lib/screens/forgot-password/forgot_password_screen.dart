import 'package:flutter/material.dart';
import 'package:pretium_app_clone/screens/forgot-password/components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot-password';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ForgotPasswordBody(),
    );
  }
}
