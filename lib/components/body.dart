import 'dart:async';
import 'dart:math';

import 'package:analog_clock/components/clock.dart';
import 'package:analog_clock/components/country_card.dart';
import 'package:analog_clock/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Text(
            "Newport Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHoursAndMinute(),
          Spacer(),
          Clock(),
          Spacer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                      child: Row(
              children: [
                CountryCard(
                  country: "New York | USA",
                  timeZone: "+3 HRS | EST",
                  iconSrc: "assets/icons/Liberty.svg",
                  time: "9:20",
                  period: "PM",
                ),
                CountryCard(
                  country: "New York | USA",
                  timeZone: "+3 HRS | EST",
                  iconSrc: "assets/icons/Liberty.svg",
                  time: "9:20",
                  period: "PM",
                ),
                CountryCard(
                  country: "New York | USA",
                  timeZone: "+3 HRS | EST",
                  iconSrc: "assets/icons/Liberty.svg",
                  time: "9:20",
                  period: "PM",
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

