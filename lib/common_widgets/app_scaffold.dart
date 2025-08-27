import 'package:flutter/material.dart';
import 'package:fund_management/config/theme/custom_colors.dart';
import 'package:fund_management/config/theme/extensions.dart';

import '../config/theme/app_theme.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.platinum,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme().appTheme().primaryColor,
        title: Text(
          'Manejo de Fondos (FPV/FIC) para clientes BTG',
          style: TextStyle(color: context.colorScheme.onError),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(10), child: body),
    );
  }
}
