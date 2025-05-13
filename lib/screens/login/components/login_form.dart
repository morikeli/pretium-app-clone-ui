import 'package:flutter/material.dart';

import '../../../common/custom_text_form_field.dart';
import '../../../common/form_errors.dart';
import '../../../constants/errors.dart';
import '../../otp/otp_screen.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final List<String> formErrors;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool rememberMe;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.formErrors,
    required this.emailController,
    required this.passwordController,
    this.rememberMe = false,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late bool _rememberMe;

  @override
  void initState() {
    super.initState();
    _rememberMe = widget.rememberMe;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          emailTextField(),
          const SizedBox(height: 20),
          passwordTextField(),
          const SizedBox(height: 12.0),

          // "Remember Me" checkbox and "Forgot password" text
          checkBoxandForgotPassword(context),
          const SizedBox(height: 8.0),
          FormErrorsWidget(errors: widget.formErrors),
          const SizedBox(height: 12.0),
          loginButton(context),
        ],
      ),
    );
  }

  SizedBox loginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (widget.formKey.currentState!.validate()) {
            widget.formKey.currentState!.save();
            Navigator.pushNamed(context, OtpScreen.routeName);
          }
        },
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Row checkBoxandForgotPassword(BuildContext context) {
    return Row(
      children: [
        Checkbox.adaptive(
            value: _rememberMe,
            activeColor: Colors.teal.shade900,
            onChanged: (value) {
              setState(() {
                _rememberMe = value!;
              });
            }),
        const Text('Remember me'),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/forgot-password'),
          child: Text(
            'Forgot password?',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  CustomTextFormField passwordTextField() {
    return CustomTextFormField(
        controller: widget.passwordController,
        label: "Password",
        icon: Icons.lock_outline,
        obscureText: true,
        validator: (value) {
          if ((value == null || value.isEmpty) &&
              !widget.formErrors.contains(kPasswordNullError)) {
            setState(() {
              widget.formErrors.add(kPasswordNullError);
            });
          } else if (value!.length < 8 &&
              !widget.formErrors.contains(kShortPasswordError)) {
            setState(() {
              widget.formErrors.add(kShortPasswordError);
            });
          }
          return null;
        });
  }

  CustomTextFormField emailTextField() {
    return CustomTextFormField(
      controller: widget.emailController,
      label: "Email",
      icon: Icons.email_outlined,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !widget.formErrors.contains(kemailNullError)) {
          setState(() {
            widget.formErrors.add(kemailNullError);
          });
        } else if (!emailValidatorRegex.hasMatch(value!) &&
            !widget.formErrors.contains(kInvalidEmailError)) {
          setState(() {
            widget.formErrors.add(kInvalidEmailError);
          });
        }
        return null;
      },
    );
  }
}
