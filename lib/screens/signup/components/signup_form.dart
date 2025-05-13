import 'package:flutter/material.dart';
import 'package:pretium_app_clone/screens/login/login_screen.dart';

import '../../../common/custom_text_form_field.dart';
import '../../../constants/errors.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];
  bool _hasReadTermsAndConditions = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          firstNameTextField(),
          const SizedBox(height: 20.0),
          lastNameTextField(),
          const SizedBox(height: 20.0),
          emailTextField(),
          const SizedBox(height: 20),
          passwordTextField(),
          SizedBox(height: 12.0),
          termsAndConditionsCheckBox(),
          const SizedBox(height: 20.0),
          signupButton(context),
        ],
      ),
    );
  }

  SizedBox signupButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            _firstNameController.clear();
            _lastNameController.clear();
            _emailController.clear();
            _passwordController.clear();
            Navigator.popAndPushNamed(context, LoginScreen.routeName);
          }
        },
        child: const Text(
          'Create account',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Row termsAndConditionsCheckBox() {
    return Row(
      children: [
        Checkbox.adaptive(
            value: _hasReadTermsAndConditions,
            activeColor: Colors.teal.shade900,
            onChanged: (value) {
              setState(() {
                _hasReadTermsAndConditions = value!;
              });
            }),
        Text(
          'Accept Terms and Conditions',
          style: TextStyle(
            color: Colors.teal.shade900,
          ),
        ),
      ],
    );
  }

  CustomTextFormField passwordTextField() {
    return CustomTextFormField(
      controller: _passwordController,
      label: "Password",
      icon: Icons.lock_outline,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kPasswordNullError;
        } else if (value.length < 8) {
          return kShortPasswordError;
        } else if (value != _passwordController.text) {
          return kPasswordMatchError;
        }
        return null;
      }
    );
  }

  CustomTextFormField emailTextField() {
    return CustomTextFormField(
      controller: _emailController,
      label: "Email",
      icon: Icons.email_outlined,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kemailNullError;
        } else if (!emailValidatorRegex.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
    );
  }

  CustomTextFormField lastNameTextField() {
    return CustomTextFormField(
      controller: _lastNameController,
      label: "Last Name",
      icon: Icons.person_outline,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kLastNameNullError;
        } else if (value.length < 2) {
          return kShortLastNameError;
        } else if (value.length > 15) {
          return kLongLastNameError;
        }
        return null;
      },
    );
  }

  CustomTextFormField firstNameTextField() {
    return CustomTextFormField(
      controller: _firstNameController,
      label: "First Name",
      icon: Icons.person_outline,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kFirstNameNullError;
        } else if (value.length < 2) {
          return kShortFirstNameError;
        } else if (value.length > 15) {
          return kLongFirstNameError;
        }
        return null;
      },
    );
  }
}
