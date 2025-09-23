import 'package:todo_app/core/extensions/date_time.dart';

enum DateBucket { today, yesterday, older }

DateBucket bucketFor(DateTime dt, DateTime now) {
  final d = dt.startOfDay;
  final n = now.startOfDay;
  if (d == n) return DateBucket.today;
  if (d == n.subtract(const Duration(days: 1))) return DateBucket.yesterday;
  return DateBucket.older;
}