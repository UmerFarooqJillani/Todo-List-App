extension DateX on DateTime {
  DateTime get startOfDay => DateTime(year, month, day);
  bool isSameDay(DateTime other) => startOfDay == other.startOfDay;
}
