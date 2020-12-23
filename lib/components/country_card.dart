import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key key,
    @required this.country,
    @required this.timeZone,
    @required this.iconSrc,
    @required this.time,
    @required this.period,
  }) : super(key: key);

  final String country, timeZone, iconSrc, time, period;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: SizedBox(
          width: 223,
          child: AspectRatio(
            aspectRatio: 1.32,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Theme.of(context).primaryIconTheme.color)),
              child: Column(
                children: [
                  Text(country,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 15)),
                  SizedBox(height: 5),
                  Text(timeZone),
                  Spacer(),
                  Row(children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: 40,
                    color: Theme.of(context).accentIconTheme.color,),
                    Spacer(),
                    Text(time, style: Theme.of(context).textTheme.headline4),
                    RotatedBox(quarterTurns: 3, child: Text(period))
                  ])
                ],
              ),
            ),
          )),
    );
  }
}
