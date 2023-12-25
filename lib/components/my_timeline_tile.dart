import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:djigit_tasks/components/my_timeline_text.dart';

class MyTimeLineTile extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool isFisrt;
  final bool isLast;
  final Color lineColor;
  final Color circleColor;
  final Color iconColor;
  final IconData icon;

  MyTimeLineTile({
    required this.firstText,
    required this.secondText,
    required this.isFisrt,
    required this.isLast,
    required this.icon,
    required this.lineColor,
    required this.circleColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TimelineTile(
        isFirst: isFisrt,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: lineColor,
          thickness: 2,
        ),
        indicatorStyle: IndicatorStyle(
          iconStyle: IconStyle(
            fontSize: 18,
            iconData: icon,
            color: iconColor,
          ),
          width: 36,
          color: circleColor,
        ),
        endChild: MyTimeLineText(
          title: firstText,
          subtitle: secondText,
        ),
      ),
    );
  }
}
