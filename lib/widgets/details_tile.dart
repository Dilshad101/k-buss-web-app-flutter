
import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class DetailsTile extends StatelessWidget {
  const DetailsTile({
    super.key,
    required this.title1,
    required this.value1,
    required this.title12,
    required this.value2,
  });
  final String title1;
  final String value1;
  final String title12;
  final String value2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        row(title1, value1),
        const SizedBox(height: 20),
        row(title1, value2),
      ],
    );
  }

  Row row(String title, String value) {
    return Row(
      children: [
        Text('$title: ', style: AppText.medium),
        Text(
          value,
          style: AppText.mediumBold.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
