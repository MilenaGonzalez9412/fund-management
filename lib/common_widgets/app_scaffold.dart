import 'package:flutter/material.dart';
import 'package:fund_management/config/theme/extensions.dart';

import '../config/theme/app_theme.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme().appTheme().primaryColor,
        title: Text(
          'BTG',
          style: TextStyle(color: context.colorScheme.onPrimary),
        ),
      ),
      body: body,
    );
  }
}
