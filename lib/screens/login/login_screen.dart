import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pretium_app_clone/screens/login/components/login_form.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];
  bool rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            const SizedBox(height: 40),
            formIcon(),
            SizedBox(height: 24.0),
            formTitle(),
            formSubTitle(),
            const SizedBox(height: 40),
            LoginForm(
              formKey: _formKey,
              formErrors: formErrors,
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            const SizedBox(height: 32.0),
            signupScreenRedirect() // allow user to navigate to sign up screen
          ],
        ),
      ),
    );
  }

  // widgets used in the login screen

  Text signupScreenRedirect() {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: "Don't have an account?  ",
        children: [
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.pushNamed(context, '/signup'),
          ),
        ],
      ),
    );
  }

  Text formSubTitle() {
    return Text(
      'Sign in to continue',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 16.0,
      ),
      textAlign: TextAlign.center,
    );
  }

  Text formTitle() {
    return Text(
      'Welcome back!',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Center formIcon() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.teal.shade100,
            shape: BoxShape.rectangle),
        padding: EdgeInsets.all(16.0),
        child: Icon(
          Icons.wallet,
          color: Colors.teal.shade900,
        ),
      ),
    );
  }
}
