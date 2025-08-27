import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/common_widgets/app_button.dart';
import 'package:fund_management/common_widgets/app_scaffold.dart';
import 'package:fund_management/features/home/presentation/controllers/providers.dart';

class FundSubscriptionScreen extends ConsumerStatefulWidget {
  static const name = 'fund-subscription';

  const FundSubscriptionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FundSubscriptionScreen();
}

class _FundSubscriptionScreen extends ConsumerState<FundSubscriptionScreen> {
  int? selectedFundId;
  String? selectedNotificationMethod;

  @override
  Widget build(BuildContext context) {
    final fundsAsync = ref.watch(fundProvider);

    return AppScaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text('Selecciona el fondo al cual ser quiere suscribir:'),
            //Table
            fundsAsync.when(
              data: (funds) {
                return DataTable(
                  columns: [
                    DataColumn(label: Text('Seleccionar')),
                    DataColumn(label: Text('Nombre')),
                    DataColumn(label: Text('Monto Minimo')),
                    DataColumn(label: Text('Categoria')),
                  ],
                  rows: [
                    for (final fund in funds)
                      DataRow(
                        cells: [
                          DataCell(
                            Radio<int>(
                              value: fund.id,
                              groupValue: selectedFundId,
                              onChanged:
                                  (value) => setState(() {
                                    selectedFundId = value;
                                  }),
                            ),
                          ),
                          DataCell(Text(fund.name)),
                          DataCell(Text(fund.minimumQuantity.toString())),
                          DataCell(Text(fund.category)),
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

            Text('Seleccione el metodo de notificacion'),
            RadioListTile(
              title: Text('Correo electronico'),
              value: 'email',
              groupValue: selectedNotificationMethod,
              onChanged:
                  (value) => setState(() {
                    selectedNotificationMethod = value;
                  }),
            ),
            RadioListTile(
              title: Text('Mensaje de text'),
              value: 'sms',
              groupValue: selectedNotificationMethod,
              onChanged:
                  (value) => setState(() {
                    selectedNotificationMethod = value;
                  }),
            ),

            Row(
              children: [
                AppButton(onPressed: () {}, content: 'Aceptar'),
                AppButton(onPressed: () {}, content: 'Cancelar'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
