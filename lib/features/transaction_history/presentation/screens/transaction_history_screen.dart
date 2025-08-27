import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/common_widgets/app_button.dart';
import 'package:fund_management/common_widgets/app_scaffold.dart';
import 'package:fund_management/config/theme/custom_colors.dart';
import 'package:fund_management/config/theme/extensions.dart';
import 'package:fund_management/features/funds/data/providers/providers.dart';
import 'package:fund_management/features/home/presentation/controllers/providers.dart';
import 'package:fund_management/features/transaction_history/data/models/transaction_history.dart';
import 'package:fund_management/features/transaction_history/presentation/controllers/providers.dart';
import 'package:fund_management/features/user/data/models/user.dart';
import 'package:go_router/go_router.dart';

class TransactionHistoryScreen extends ConsumerWidget {
  static const name = 'transaction-history';

  final User user;

  const TransactionHistoryScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsAsync = ref.watch(transactionHistoryProvider);
    return AppScaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Señor ${user.name}, a continuación encontrará el historial de transacciones',
                  style: context.textTheme.titleLarge,
                ),
                AppButton(
                  content: 'Volver a la página principal',
                  onPressed: () => context.go('/'),
                ),
              ],
            ),
            SizedBox(height: 60),
            transactionsAsync.when(
              data: (transactions) {
                return transactions.userFunds.isNotEmpty
                    ? Center(
                      child: DataTable(
                        columns: _buildColumns(),
                        rows: _buildRows(context, ref, user.id, transactions),
                      ),
                    )
                    : Center(
                      child: Text(
                        'Usted no tiene historial de transacciones',
                        style: context.textTheme.titleMedium,
                      ),
                    );
              },
              error: (Object error, StackTrace stackTrace) {
                return Center(
                  child: Text(
                    'Error Transaction History Screen: $error, $stackTrace',
                  ),
                );
              },
              loading: () => Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}

List<DataColumn> _buildColumns() => [
  for (final columnTitle in [
    'Nombre del Fondo',
    'Costo de la Transacción',
    'Método de Notificación',
    'Fecha Inicio Suscripción',
    'Fecha Fin Suscripción',
    'Cancelar Suscripción',
  ])
    DataColumn(
      label: Flexible(
        child: Text(columnTitle, maxLines: 2, overflow: TextOverflow.ellipsis),
      ),
    ),
];

List<DataRow> _buildRows(
  BuildContext context,
  WidgetRef ref,
  int userId,
  TransactionHistory transactions,
) => [
  for (final transaction in transactions.userFunds)
    DataRow(
      cells: [
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 150),
            child: Text(transaction.fundName),
          ),
        ),
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child: Text(formatCurrency(transaction.transactionCost)),
          ),
        ),
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child: Text((transaction.notificationMethod.capitalize())),
          ),
        ),
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child: Text(formatDate(transaction.startDate)),
          ),
        ),
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child:
                transaction.endDate != null
                    ? Text(formatDate(transaction.endDate!))
                    : null,
          ),
        ),
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child:
                transaction.isActive
                    ? AppButton(
                      content: 'Cancelar',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: Text('Advertencia'),
                                content: Text(
                                  '¿Está seguro que desea cancelar la suscripción al fondo ${transaction.fundName}?',
                                ),
                                actions: [
                                  AppButton(
                                    content: 'No',
                                    onPressed:
                                        () => Navigator.of(context).pop(),
                                  ),
                                  AppButton(
                                    content: 'Si',
                                    onPressed: () {
                                      _cancelSubscription(
                                        context,
                                        ref,
                                        userId,
                                        transaction.fundId,
                                      );
                                      context.go('/');
                                    },
                                  ),
                                ],
                              ),
                        );
                      },
                    )
                    : null,
          ),
        ),
      ],
    ),
];

Future<void> _cancelSubscription(
  BuildContext context,
  WidgetRef ref,
  int userId,
  int fundId,
) async {
  try {
    final fund = ref.watch(fundByIdProvider(fundId));

    ref
        .read(fundSubscriptionRepositoryProvider)
        .cancelSubscription(userId: userId, fund: fund!);

    ref.invalidate(userProvider);
    ref.invalidate(transactionHistoryProvider);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Suscripción cancelada con éxito'),
        backgroundColor: CustomColors.emerald,
      ),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Error al realizar la suscripción, intente de nuevo.',
          style: TextStyle(color: CustomColors.platinum),
        ),
        backgroundColor: CustomColors.red,
      ),
    );
  }
}
