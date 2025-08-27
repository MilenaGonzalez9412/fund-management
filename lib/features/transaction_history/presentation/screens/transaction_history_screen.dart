import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/common_widgets/app_button.dart';
import 'package:fund_management/common_widgets/app_scaffold.dart';
import 'package:fund_management/config/theme/extensions.dart';
import 'package:fund_management/features/transaction_history/presentation/controllers/providers.dart';
import 'package:fund_management/features/user/data/models/user.dart';

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
            Text(
              'Senor ${user.name}, a continuacion encontrara el historial de sus transacciones',
            ),

            transactionsAsync.when(
              data: (transactions) {
                return transactions.userFunds.isNotEmpty
                    ? Center(
                      child: DataTable(
                        columns: _buildColumns(),
                        rows: _buildRows(context, transactions),
                      ),
                    )
                    : Text('Usted no tiene historial');
              },
              error: (Object error, StackTrace stackTrace) {
                return Center(child: Text('Error: $error, $stackTrace'));
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
    'Costo de la Transaccion',
    'Fecha Inicio Suscripcion',
    'Fecha Fin Suscripcion',
    'Cancelar Suscripcion',
  ])
    DataColumn(
      label: Flexible(
        child: Text(columnTitle, maxLines: 2, overflow: TextOverflow.ellipsis),
      ),
    ),
];

List<DataRow> _buildRows(context, transactions) => [
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
            child: Text(formatDate(transaction.startDate)),
          ),
        ),
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child: Text(formatDate(transaction.endDate)),
          ),
        ),
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child:
                transaction.isActive
                    ? AppButton(content: 'Cancelar', onPressed: () {})
                    : null,
          ),
        ),
      ],
    ),
];
