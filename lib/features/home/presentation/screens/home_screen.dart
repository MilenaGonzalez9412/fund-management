import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/common_widgets/app_button.dart';
import 'package:fund_management/common_widgets/app_scaffold.dart';
import 'package:fund_management/features/home/presentation/screens/controllers/providers.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userProvider);

    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: userAsync.when(
          data: (user) {
            final currentFund =
                ((user.currentAffiliation! > 0)
                    ? ref.watch(fundByIdProvider(user.currentAffiliation!))
                    : null);

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bienvenido, ${user.name} ${user.lastName}'),
                    Text('Su saldo disponible es: \$${user.balance}'),
                  ],
                ),
                Text(
                  currentFund != null
                      ? 'Acutalmente usted esta suscrito al fondo ${currentFund.name}'
                      : 'Actualmente usted no pertenece a ningún fondo',
                ),
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
            );
          },
          error: (Object error, StackTrace stackTrace) {
            return Center(child: Text('Error: $error, $stackTrace'));
          },
          loading: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
