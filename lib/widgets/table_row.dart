import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class TableTile extends StatelessWidget {
  const TableTile({
    super.key,
    required this.label1,
    required this.label2,
    required this.label3,
    this.isHeader = false,
  });
  final String label1;
  final String label2;
  final String label3;
  final bool isHeader;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 10),
            setLabel(flex: 3, label: label1),
            setLabel(flex: 5, label: label2),
            setLabel(flex: 2, label: label3),
          ],
        ),
        const SizedBox(height: 6),
        const Divider(thickness: 2, color: AppColor.terinaryColor)
      ],
    );
  }

  Widget setLabel({required int flex, required String label}) => Expanded(
        flex: flex,
        child: Text(label, style: isHeader ? AppText.small : AppText.xSmall),
      );
}
