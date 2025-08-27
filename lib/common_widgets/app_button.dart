import 'package:flutter/material.dart';
import 'package:fund_management/config/theme/extensions.dart';

class AppButton extends StatelessWidget {
  final String content;
  final VoidCallback onPressed;

  const AppButton({super.key, required this.content, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
      ),
      onPressed: onPressed,
      child: Text(
        content,
        style: TextStyle(
          color: context.colorScheme.surface,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
