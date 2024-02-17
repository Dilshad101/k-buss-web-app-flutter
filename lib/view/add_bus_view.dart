import 'package:flutter/material.dart';
import 'package:k_buss/utils/text_styles.dart';
import 'package:k_buss/utils/validations.dart';

import '../widgets/app_textformfeild.dart';

class AddBussView extends StatelessWidget {
  AddBussView({super.key});
  final bussNameController = TextEditingController();
  final bussNoController = TextEditingController();
  final ownerNameController = TextEditingController();
  final ownerNoController = TextEditingController();
  final assistantNameController = TextEditingController();
  final assistantNoController = TextEditingController();

  final validateKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return Container(
      alignment: Alignment.center,
      height: double.maxFinite,
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Container(
          width: w * .4,
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: Form(
            key: validateKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Add Buss', style: AppText.largeBold),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: AppTextField(
                      controller: bussNameController,
                      label: 'Buss Name',
                      hint: 'Buss Name',
                      validator: (value) =>
                          Validations.isEmpty(value, 'Buss Name'),
                    )),
                    const SizedBox(width: 10),
                    Expanded(
                        child: AppTextField(
                      controller: bussNoController,
                      label: 'Buss No',
                      validator: (value) =>
                          Validations.isEmpty(value, 'Buss Number'),
                    )),
                  ],
                ),
                AppTextField(
                  controller: ownerNameController,
                  label: 'Owner Name',
                  validator: (value) =>
                      Validations.isEmpty(value, 'Owner Name'),
                ),
                AppTextField(
                  controller: ownerNoController,
                  label: 'Owner No',
                  validator: (value) =>
                      Validations.isNumber(value, 'Owner Number'),
                ),
                AppTextField(
                  controller: assistantNameController,
                  label: 'Assistant Name',
                  validator: (value) =>
                      Validations.isEmpty(value, 'Assistant Name'),
                ),
                AppTextField(
                  controller: assistantNoController,
                  label: 'Assistant No',
                  validator: (value) =>
                      Validations.isNumber(value, 'Assistant Number'),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      if (validateKey.currentState!.validate()) {}
                    },
                    child: const Text('Add Buss'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
