
import 'package:flutter/material.dart';
import 'package:pretium_app_clone/theme/colors.dart';

class OnboardingItem {
  final Icon icon;
  final String title;
  final String description;

  OnboardingItem({
    required this.icon,
    required this.title,
    required this.description,
  });
}

final onboardingItems = [
  OnboardingItem(
    icon: Icon(Icons.credit_card, color: kIconDarkColor, size: 52.0),
    title: 'Direct Pay',
    description: 'Pay with crypto across Africa effortlessly',
  ),
  OnboardingItem(
    icon: Icon(Icons.account_balance_wallet, color: kIconDarkColor, size: 52.0),
    title: 'Accept Payments',
    description: 'Accept stablecoin payments hassle-free',
  ),
  OnboardingItem(
    icon: Icon(Icons.receipt_long_outlined, color: kIconDarkColor, size: 52.0),
    title: 'Pay Bills',
    description: 'Pay for utility services and earn rewards',
  ),
];
