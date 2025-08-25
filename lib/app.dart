import 'package:flutter/material.dart';
import 'package:fund_management/config/theme/extensions.dart';
import 'package:fund_management/features/home/presentation/screens/home_screen.dart';

import 'config/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme().appTheme().primaryColor,

          title: Text(
            'BTG',
            style: TextStyle(color: context.colorScheme.onPrimary),
          ),
        ),
        body: HomeScreen(),
      ),
      theme: AppTheme().appTheme(),
    );
  }
}
