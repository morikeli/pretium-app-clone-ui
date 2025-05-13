import 'package:flutter/material.dart';

import 'screens/forgot-password/forgot_password_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/onboarding/onboarding_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/signup/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  
};
