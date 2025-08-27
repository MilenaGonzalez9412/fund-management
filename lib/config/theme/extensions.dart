import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
}

String formatDate(String fullDate) {
  final date = DateTime.parse(fullDate);
  return DateFormat('yyyy-MM-dd').format(date);
}

String formatCurrency(double value) {
  final formatter = NumberFormat('#,##0', 'es_CO');
  return '\$${formatter.format(value)} COP';
}
