import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pretium_app_clone/screens/otp/components/otp_form.dart';

class OtpScreenBody extends StatelessWidget {
  const OtpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          otpScreenTitle(),
          otpScreenSubTitle(),
          const SizedBox(height: 16.0),
          OtpForm(),
          const SizedBox(height: 24.0),
          resendOTPCodeLink(context),
        ],
      ),
    );
  }

  Text resendOTPCodeLink(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: "Didn't receive code?  ",
        children: [
          TextSpan(
            text: 'Resend Code',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {},
          ),
        ],
      ),
    );
  }

  Text otpScreenSubTitle() {
    return Text(
      'Enter the verification code sent to your email.',
      style: TextStyle(fontSize: 16.0, color: Colors.grey),
      textAlign: TextAlign.start,
    );
  }

  Text otpScreenTitle() {
    return Text(
      'Verify Account',
      style: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }
}
