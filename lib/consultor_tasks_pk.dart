library consultor_tasks_pk;

import 'package:intl/intl.dart';

String formattedPhone(double bmi) {
  final formatter = NumberFormat('(##)####-####');
  return formatter.format(bmi);
}
