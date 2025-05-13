import 'package:flutter/material.dart';
import 'package:pretium_app_clone/screens/forgot-password/components/forgot_password_form.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Text(
            'Forgot password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            'Enter your email to recieve your password reset code.',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 16.0),
          ForgotPasswordForm(),
        ],
      ),
    );
  }
}
