import 'package:cupertino_calendar/src/src.dart';
import 'package:flutter/cupertino.dart';

class CalendarMonthPickerDecoration {
  factory CalendarMonthPickerDecoration({
    CalendarMonthPickerDayStyle? dayStyle,
    CalendarMonthPickerDayStyle? todayStyle,
    CalendarMonthPickerDayStyle? selectedDayStyle,
    CalendarMonthPickerDayStyle? selectedTodayStyle,
    CalendarMonthPickerDayStyle? disabledDayStyle,
  }) {
    return CalendarMonthPickerDecoration._(
      dayStyle: dayStyle,
      todayStyle: todayStyle,
      selectedDayStyle: selectedDayStyle,
      selectedTodayStyle: selectedTodayStyle,
      disabledDayStyle: disabledDayStyle,
    );
  }

  const CalendarMonthPickerDecoration._({
    this.dayStyle,
    this.todayStyle,
    this.selectedDayStyle,
    this.selectedTodayStyle,
    this.disabledDayStyle,
  });

  factory CalendarMonthPickerDecoration.withDynamicColor(
    BuildContext context, {
    required Color mainColor,
    CalendarMonthPickerDayStyle? dayStyle,
    CalendarMonthPickerDayStyle? todayStyle,
    CalendarMonthPickerDayStyle? selectedDayStyle,
    CalendarMonthPickerDayStyle? selectedTodayStyle,
    CalendarMonthPickerDayStyle? disabledDayStyle,
  }) {
    return CalendarMonthPickerDecoration(
      dayStyle: dayStyle ??
          CalendarMonthPickerDefaultDayStyle.withDynamicColor(context),
      todayStyle: todayStyle ??
          CalendarMonthPickerCurrentDayStyle.withDynamicColor(
            context,
            mainColor: mainColor,
          ),
      disabledDayStyle: selectedDayStyle ??
          CalendarMonthPickerDisabledDayStyle.withDynamicColor(
            context,
          ),
      selectedDayStyle: selectedTodayStyle ??
          CalendarMonthPickerSelectedDayStyle.withDynamicColor(
            context,
            mainColor: mainColor,
          ),
      selectedTodayStyle: disabledDayStyle ??
          CalendarMonthPickerCurrentAndSelectedDayStyle.withDynamicColor(
            context,
            mainColor: mainColor,
          ),
    );
  }

  final CalendarMonthPickerDayStyle? dayStyle;
  final CalendarMonthPickerDayStyle? todayStyle;
  final CalendarMonthPickerDayStyle? selectedDayStyle;
  final CalendarMonthPickerDayStyle? selectedTodayStyle;
  final CalendarMonthPickerDayStyle? disabledDayStyle;

  CalendarMonthPickerDecoration copyWith({
    CalendarMonthPickerDayStyle? dayStyle,
    CalendarMonthPickerDayStyle? todayStyle,
    CalendarMonthPickerDayStyle? selectedDayStyle,
    CalendarMonthPickerDayStyle? selectedTodayStyle,
    CalendarMonthPickerDayStyle? disabledDayStyle,
  }) {
    return CalendarMonthPickerDecoration(
      dayStyle: dayStyle ?? this.dayStyle,
      todayStyle: todayStyle ?? this.todayStyle,
      selectedDayStyle: selectedDayStyle ?? this.selectedDayStyle,
      selectedTodayStyle: selectedTodayStyle ?? this.selectedTodayStyle,
      disabledDayStyle: disabledDayStyle ?? this.disabledDayStyle,
    );
  }
}
