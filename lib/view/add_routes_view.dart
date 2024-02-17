import 'package:flutter/material.dart';
import 'package:k_buss/utils/colors.dart';
import 'package:k_buss/utils/text_styles.dart';
import 'package:k_buss/widgets/add_route_dialog.dart';
import 'package:k_buss/widgets/custom_textfield.dart';

import '../widgets/accordion.dart';
import '../widgets/details_tile.dart';

class AddRouteView extends StatelessWidget {
  AddRouteView({super.key});
  final searchController = TextEditingController();
  final fromController = TextEditingController();
  final toController = TextEditingController();
  final stopController = TextEditingController();
  final timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(right: 60),
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Buss Details', style: AppText.mediumBold),
                  const SizedBox(width: 100),
                  Expanded(
                    child: CustomTextFormField(
                      controller: searchController,
                      hint: 'Enter Buss Number',
                      borderRadius: 50,
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DetailsTile(
                    title1: 'Buss Name',
                    value1: 'Oscar',
                    title12: 'Buss No',
                    value2: 'KL 10 9778',
                  ),
                  DetailsTile(
                    title1: 'Owner Name',
                    value1: 'Dilshad',
                    title12: 'Owner No',
                    value2: '9080786785',
                  ),
                  DetailsTile(
                    title1: 'Assistant Name',
                    value1: 'Afsal',
                    title12: 'Assistant No',
                    value2: '9809876756',
                  )
                ],
              )
            ],
          ),
        )),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: AppColor.terinaryColor, width: 2),
                  ),
                ),
                margin: const EdgeInsets.only(right: 60, bottom: 40),
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Buss Routes', style: AppText.mediumBold),
                        SizedBox(
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () => showPopUp(context),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            child: Text(
                              'Add Route',
                              style:
                                  AppText.medium.copyWith(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Accordion(),
                    const Accordion(),
                    const Accordion(),
                    const Accordion(),
                    const Accordion(),
                    const Accordion(),
                  ],
                ),
              ),
            )),
      ],
    );
  }

  showPopUp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddRouteDialog(
          fromController: fromController,
          toController: toController,
          stopController: stopController,
          timeController: timeController,
        );
      },
    );
  }
}
