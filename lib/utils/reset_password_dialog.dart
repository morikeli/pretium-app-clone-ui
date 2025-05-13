import 'package:flutter/material.dart';
import 'package:pretium_app_clone/theme/colors.dart';

void showResetCodeSentDialog(BuildContext context, String email) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      title: const Text('Reset Code Sent'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_circle, color: kIconDarkColor, size: 42.0),
          const SizedBox(height: 16.0),
          Text(
            'A reset code has been sent to $email',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      actions: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
              Navigator.pushNamed(context, '/reset-password');
            },
            child: const Text('Continue'),
          ),
        ),
      ],
    ),
  );
}
