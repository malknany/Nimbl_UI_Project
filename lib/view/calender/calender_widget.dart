import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({Key? key}) : super(key: key);

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusedDay,
      daysOfWeekVisible: true,
      onDaySelected: (selectDay, focusDay) {
        setState(() {
          selectedDay = selectDay;
          focusedDay = focusDay;
        });
      },
      selectedDayPredicate: (DateTime date) {
        return isSameDay(selectedDay, date);
      },
      calendarStyle: const CalendarStyle(
        selectedTextStyle: TextStyle(
          color: Colors.white,
        ),
        selectedDecoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xffFFBF67)),
        isTodayHighlighted: true,
        todayDecoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xffFFBF67)),
        outsideTextStyle: TextStyle(color: Colors.white),
        weekendTextStyle: TextStyle(color: Colors.white),
        defaultTextStyle: TextStyle(color: Colors.white),
      ),
      headerVisible: true,
      headerStyle: const HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          formatButtonTextStyle: TextStyle(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white)),
      rowHeight: 60.h,
      startingDayOfWeek: StartingDayOfWeek.friday,
      daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: const TextStyle(color: Colors.white),
          weekendStyle: const TextStyle(color: Colors.white),
          decoration:
              BoxDecoration(color: const Color(0xffFFBF67).withOpacity(0.4))),
    );
  }
}
