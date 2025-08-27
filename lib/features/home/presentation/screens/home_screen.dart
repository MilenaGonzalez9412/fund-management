import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/common_widgets/app_button.dart';
import 'package:fund_management/common_widgets/app_scaffold.dart';
import 'package:fund_management/config/theme/extensions.dart';
import 'package:fund_management/features/home/presentation/controllers/providers.dart';
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
                    Text(
                      'Bienvenido, ${user.name} ${user.lastName}',

                      style: context.textTheme.titleLarge,
                    ),
                    Text(
                      'Su saldo disponible es: ${formatCurrency(user.balance)}',
                      style: context.textTheme.titleMedium,
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Center(
                  child: Text(
                    currentFund != null
                        ? 'Actualmente usted esta suscrito al fondo ${currentFund.name}'
                        : 'Actualmente usted no pertenece a ningún fondo',
                    style: context.textTheme.displayMedium,
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  user.currentAffiliation != 0
                      ? ''
                      : '¿Desea pertenecer a alguno?',
                  style: context.textTheme.displaySmall,
                ),

                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    user.currentAffiliation != 0
                        ? SizedBox()
                        : AppButton(
                          content: 'Suscribirme a un fondo',
                          onPressed: () {
                            context.push('/fund-subscription', extra: user);
                          },
                        ),
                    SizedBox(width: 20),
                    AppButton(
                      content: 'Consultar historial transacciones',
                      onPressed: () {
                        context.push('/transaction-history', extra: user);
                      },
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
