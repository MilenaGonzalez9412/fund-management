import 'package:flutter/material.dart';
import 'package:fund_management/config/router/app_router.dart';

import 'config/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme().appTheme(),
    );
  }
}
