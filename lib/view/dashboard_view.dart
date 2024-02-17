import 'package:flutter/material.dart';
import 'package:k_buss/utils/text_styles.dart';

import '../widgets/dashboard_card.dart';
import '../widgets/table_row.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40, right: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DashboardCard(),
            const SizedBox(height: 50),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Busses', style: AppText.medium),
                    const TableTile(
                      label1: 'Buss Name',
                      label2: 'Buss No',
                      label3: 'Status',
                      isHeader: true,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => const TableTile(
                          label1: 'Oscar',
                          label2: 'KL 84 8768',
                          label3: 'Completed'),
                      itemCount: 2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
