import 'dart:async';

import 'package:flutter/material.dart';

class TimeInHoursAndMinute extends StatefulWidget {
  TimeInHoursAndMinute({Key key}) : super(key: key);

  @override
  _TimeInHoursAndMinuteState createState() => _TimeInHoursAndMinuteState();
}

class _TimeInHoursAndMinuteState extends State<TimeInHoursAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer){
      if(_timeOfDay.minute != TimeOfDay.now().minute){
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    String _period = _timeOfDay.period == DayPeriod.am ? "Am" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text("${_timeOfDay.hour} : ${_timeOfDay.minute}", style: Theme.of(context).textTheme.headline1,),
         SizedBox(width: 5),
         RotatedBox(
           quarterTurns: 3,
           child: Text(_period, style: TextStyle(fontSize: 18),))
       ],
    );
  }
}

