
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../utils/text_styles.dart';
import 'time_line.dart';

class Accordion extends StatelessWidget {
  const Accordion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      collapsedTitleBackgroundColor: const Color(0xffE2EEFF),
      expandedTitleBackgroundColor: const Color(0xffDFECFF),
      titleChild: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          info('Route 1'),
          const SizedBox(width: 100),
          info('From', 'Areecode'),
          const SizedBox(width: 80),
          info('To', 'Kondotty'),
        ],
      ),
      contentBackgroundColor: const Color(0xffE2EEFF).withOpacity(.4),
      contentChild: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimeLine(time: '4:30 AM', destination: 'Areecode', isFirst: true),
          TimeLine(time: '4:40 AM', destination: 'Kizhisheri'),
          TimeLine(time: '4:40 AM', destination: 'Kizhisheri'),
          TimeLine(time: '4:40 AM', destination: 'Kizhisheri'),
          TimeLine(time: '4:40 AM', destination: 'Kizhisheri'),
          TimeLine(time: '4:50 AM', destination: 'Kondotty', isLast: true),
        ],
      ),
    );
  }

  Widget info(String title, [String? value]) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: AppText.mediumBold.copyWith(color: Colors.black)),
        if (value != null) Text(' : $value', style: AppText.mediumBold)
      ],
    );
  }
}
