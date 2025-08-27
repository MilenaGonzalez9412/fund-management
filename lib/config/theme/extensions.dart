import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}

String formatDate(String fullDate) {
  final date = DateTime.parse(fullDate);
  return DateFormat('yyyy-MM-dd').format(date);
}

String formatCurrency(double value) {
  final formatter = NumberFormat('#,##0', 'es_CO');
  return '\$${formatter.format(value)} COP';
}

extension CapitalizationX on String {
  String capitalize() {
    if (length == 0) return this;
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
