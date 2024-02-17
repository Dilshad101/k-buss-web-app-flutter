import 'package:flutter/material.dart';
import 'package:k_buss/utils/colors.dart';
import 'package:k_buss/utils/text_styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 6),
      child: Row(
        children: [
          Text('K-BUSS',
              style: AppText.xLarge.copyWith(color: AppColor.primaryColor)),
          const Spacer(),
          Text('Admin Panel', style: AppText.xLarge),
          const Spacer(),
          const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: AppColor.backgroundColor,
                child: Text('M'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
