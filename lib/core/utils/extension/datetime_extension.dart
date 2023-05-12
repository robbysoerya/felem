import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String toFormattedDate() {
    final pattern = DateFormat('dd MMM yyyy');
    return pattern.format(this);
  }
}