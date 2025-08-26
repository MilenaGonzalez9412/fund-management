import 'package:flutter/material.dart';
import 'package:fund_management/common_widgets/app_button.dart';
import 'package:fund_management/common_widgets/app_scaffold.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bienvenido, John Doe'),
                Text('Su saldo disponible es: \$500.000'),
              ],
            ),
            Text('Actualmente usted no pertenece a ningún fondo'),
            Text('Desea pertenecer a algun fondo?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  content: 'Suscribirme a un fondo',
                  onPressed: () {
                    context.push('/fund-subscription');
                  },
                ),
                SizedBox(width: 8),
                AppButton(
                  content: 'Consultar historial transacciones',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
