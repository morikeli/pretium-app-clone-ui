import 'package:flutter/material.dart';

import '../../../common/form_errors.dart';
import '../../../constants/errors.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];
  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          otpCodeTextField(),
          FormErrorsWidget(errors: formErrors),
          const SizedBox(height: 24.0),
          verifyAccountButton(context),
        ],
      ),
    );
  }

  SizedBox verifyAccountButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            // Navigator.popAndPushNamed(context, LoginScreen.routeName);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal.shade900,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: const Text(
          'Verify Account',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  TextFormField otpCodeTextField() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.grey.shade50, style: BorderStyle.none
                    // width: .5
                    ),
            borderRadius: BorderRadius.circular(8.0)),
        label: Text("1234", style: TextStyle(color: Colors.teal)),
        suffixIcon: Icon(Icons.security),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !formErrors.contains(kOTPCodeError)) {
          setState(() {
            formErrors.add(kOTPCodeError);
          });
        } else if (value!.length < 4 &&
            !formErrors.contains(kShortOTPCodeError)) {
          setState(() {
            formErrors.add(kShortOTPCodeError);
          });
        } else if (!formErrors.contains(kOTPCodeVerificationError)) {
          setState(() {
            formErrors.add(kOTPCodeVerificationError);
          });
        }
        return null;
      },
    );
  }
}
