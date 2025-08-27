import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/common_widgets/app_button.dart';
import 'package:fund_management/common_widgets/app_scaffold.dart';
import 'package:fund_management/config/theme/custom_colors.dart';
import 'package:fund_management/config/theme/extensions.dart';
import 'package:fund_management/features/funds/data/providers/providers.dart';
import 'package:fund_management/features/home/presentation/controllers/providers.dart';
import 'package:fund_management/features/transaction_history/presentation/controllers/providers.dart';
import 'package:fund_management/features/user/data/models/user.dart';
import 'package:go_router/go_router.dart';

class FundSubscriptionScreen extends ConsumerStatefulWidget {
  static const name = 'fund-subscription';

  final User user;

  const FundSubscriptionScreen({super.key, required this.user});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FundSubscriptionScreen();
}

class _FundSubscriptionScreen extends ConsumerState<FundSubscriptionScreen> {
  final _form = GlobalKey<FormState>();
  int? selectedFundId;
  String? selectedNotificationMethod;

  @override
  Widget build(BuildContext context) {
    final fundsAsync = ref.watch(fundProvider);

    return AppScaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Form(
          key: _form,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Selecciona el fondo al cual se quiere suscribir:',
                    style: context.textTheme.titleMedium,
                  ),
                  Text(
                    'Su saldo disponible es: ${formatCurrency(widget.user.balance)}',
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
              SizedBox(height: 40),
              //Table
              fundsAsync.when(
                data: (funds) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DataTable(
                        columns: [
                          DataColumn(label: Text('Seleccionar')),
                          DataColumn(label: Text('Nombre')),
                          DataColumn(label: Text('Monto Mínimo')),
                          DataColumn(label: Text('Categoría')),
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
                                          if (widget.user.balance <
                                              fund.minimumQuantity) {
                                            selectedFundId = 0;
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                backgroundColor:
                                                    CustomColors.red,
                                                content: Text(
                                                  'Usted no posee fondo suficiente para suscribirse a este fondo',
                                                  style: TextStyle(
                                                    color:
                                                        CustomColors.platinum,
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            selectedFundId = value;
                                          }
                                        }),
                                  ),
                                ),
                                DataCell(Text(fund.name)),
                                DataCell(
                                  Text(formatCurrency(fund.minimumQuantity)),
                                ),
                                DataCell(Text(fund.category)),
                              ],
                            ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Seleccione el método de notificación',
                        style: context.textTheme.titleMedium,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Radio<String>(
                                value: 'email',

                                groupValue: selectedNotificationMethod,
                                onChanged:
                                    (value) => setState(() {
                                      selectedNotificationMethod = value;
                                    }),
                              ),
                              Text('Correo electrónico'),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Radio<String>(
                                value: 'sms',
                                groupValue: selectedNotificationMethod,
                                onChanged:
                                    (value) => setState(() {
                                      selectedNotificationMethod = value;
                                    }),
                              ),
                              Text('Mensaje de texto'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppButton(
                            onPressed: () {
                              if (selectedFundId == null ||
                                  selectedNotificationMethod == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.amber,
                                    content: Text(
                                      'Debe seleccionar un fondo y un método de notificación',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                );
                                return;
                              }

                              _subscribeToFund(
                                context,
                                ref,
                                widget.user.id,
                                selectedFundId,
                                selectedNotificationMethod,
                              );
                              context.go('/');
                            },
                            content: 'Aceptar',
                          ),
                          SizedBox(width: 20),
                          AppButton(
                            onPressed: () => Navigator.of(context).pop(),
                            content: 'Cancelar',
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
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _subscribeToFund(
  BuildContext context,
  WidgetRef ref,
  int userId,
  int? fundId,
  String? notificationMethod,
) async {
  try {
    final fund = ref.watch(fundByIdProvider(fundId!));

    ref
        .read(fundSubscriptionRepositoryProvider)
        .subscribe(userId, fund!, notificationMethod!);

    ref.invalidate(userProvider);
    ref.invalidate(transactionHistoryProvider);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Suscripción realizada con éxito'),
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
