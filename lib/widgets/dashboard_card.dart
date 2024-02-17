import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: const Border(
              top: BorderSide(color: AppColor.primaryColor, width: 4)),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFEEEEEE),
              blurRadius: 10,
              offset: Offset(1, 1),
              spreadRadius: 1,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Total Busses', style: AppText.medium),
          Text('33', style: AppText.xxLarge),
        ],
      ),
    );
  }
}
