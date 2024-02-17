
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    required this.time,
    required this.destination,
  });
  final bool isFirst;
  final bool isLast;
  final String time;
  final String destination;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      isFirst: isFirst,
      isLast: isLast,
      lineXY: .05,
      afterLineStyle:
          LineStyle(thickness: 2, color: AppColor.primaryColor.withOpacity(.6)),
      beforeLineStyle:
          LineStyle(thickness: 2, color: AppColor.primaryColor.withOpacity(.6)),
      endChild: contentInfo(),
      indicatorStyle: IndicatorStyle(
        width: 15,
        drawGap: true,
        color: AppColor.primaryColor.withOpacity(.6),
      ),
    );
  }

  Widget contentInfo() {
    return Row(
      children: [
        const SizedBox(width: 20),
        Text(
          'Time :',
          style: AppText.smallBold.copyWith(color: Colors.black),
        ),
        const SizedBox(width: 4),
        Text(time, style: AppText.smallBold),
        const SizedBox(width: 40),
        Text(
          'Destination :',
          style: AppText.smallBold.copyWith(color: Colors.black),
        ),
        const SizedBox(width: 4),
        Text(destination, style: AppText.smallBold),
      ],
    );
  }
}
