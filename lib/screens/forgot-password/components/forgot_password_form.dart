import 'package:flutter/material.dart';

import '../../../common/custom_text_form_field.dart';
import '../../../common/form_errors.dart';
import '../../../constants/errors.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailTextField(),
          FormErrorsWidget(errors: formErrors),
          const SizedBox(height: 24.0),
          sendResetCodeButton(context),
        ],
      ),
    );
  }

  SizedBox sendResetCodeButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            // Navigator.popAndPushNamed(context, LoginScreen.routeName);
          }
        },
        child: const Text(
          'Send reset code',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  CustomTextFormField emailTextField() {
    return CustomTextFormField(
      controller: _emailController,
      label: "Email",
      icon: Icons.email_outlined,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !formErrors.contains(kemailNullError)) {
          setState(() {
            formErrors.add(kemailNullError);
          });
        } else if (!emailValidatorRegex.hasMatch(value!) &&
            !formErrors.contains(kInvalidEmailError)) {
          setState(() {
            formErrors.add(kInvalidEmailError);
          });
        }
        return null;
      },
    );
  }
}
