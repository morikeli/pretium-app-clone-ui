import 'package:flutter/material.dart';
import 'package:pretium_app_clone/utils/reset_password_dialog.dart';

import '../../../common/custom_text_form_field.dart';
import '../../../constants/errors.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];
  bool obscureNewPassword = true;
  bool obscureConfirmPassword = true;

  @override
  void dispose() {
    _codeController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          resetCodeTextField(),
          const SizedBox(height: 20),
          newPasswordTextField(),
          const SizedBox(height: 20),
          confirmPasswordTextField(),
          const SizedBox(height: 20.0),
          resetPasswordButton(context),
        ],
      ),
    );
  }

  SizedBox resetPasswordButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            // clear text fields
            _codeController.clear();
            _confirmPasswordController.clear();
            _newPasswordController.clear();
            ResetPasswordDialog.showResetCodeFailedDialog(context);
          }
        },
        child: const Text(
          'Reset password',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  CustomTextFormField confirmPasswordTextField() {
    return CustomTextFormField(
      controller: _confirmPasswordController,
      label: "Confirm Password",
      icon: Icons.lock_outline,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Confirm password is required';
        } else if (value.length < 8) {
          return kShortPasswordError;
        } else if (value != _newPasswordController.text) {
          return kPasswordMatchError;
        }
        return null;
      }
    );
  }

  CustomTextFormField newPasswordTextField() {
    return CustomTextFormField(
      controller: _newPasswordController,
      label: "New Password",
      icon: Icons.lock_outline,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kPasswordNullError;
        } else if (value.length < 8) {
          return kShortPasswordError;
        } else if (value != _newPasswordController.text) {
          return kPasswordMatchError;
        }
        return null;
      }
    );
  }

  CustomTextFormField resetCodeTextField() {
    return CustomTextFormField(
      controller: _codeController,
      label: "Reset Code",
      icon: Icons.lock_reset,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kOTPCodeError;
        } else if (value.length < 4) {
          return kShortOTPCodeError;
        }
        return null;
      },
    );
  }
}
