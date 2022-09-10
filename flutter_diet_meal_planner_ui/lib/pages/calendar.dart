import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime _selectedDate;
  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CalendarTimeline(
        showYears: true,
        initialDate: _selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365 * 4)),
        onDateSelected: (date) => setState(() => _selectedDate = date),
        leftMargin: 20,
        monthColor: Colors.white70,
        dayColor: Colors.teal[200],
        dayNameColor: Color(0xFF333A47),
        activeDayColor: Colors.white,
        activeBackgroundDayColor: Colors.redAccent[100],
        dotsColor: Color(0xFF333A47),
        selectableDayPredicate: (date) => date.day != 23,
        locale: 'en',
      ),
    );
  }
}
