import 'package:intl/intl.dart';

String formatToMoney(String price) {
  final formatter = NumberFormat('#,###');
  return formatter.format(int.parse(price));
}

extension MoneyFormatter on String {
  /// Created By JAEWON, 2025.06.02
  ///
  /// email : won8070@naver.com
  ///
  /// tip : 콤마(,) 붙여줌
  String toMoney() {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(this));
  }
}
