import 'package:flutter/material.dart';
import 'package:k_buss/utils/text_styles.dart';
import 'package:k_buss/utils/validations.dart';

import 'app_button.dart';
import 'app_textformfeild.dart';
import 'custom_button.dart';

class AddRouteDialog extends StatelessWidget {
  AddRouteDialog({
    super.key,
    required this.fromController,
    required this.toController,
    required this.stopController,
    required this.timeController,
  });

  final TextEditingController fromController;
  final TextEditingController toController;
  final TextEditingController stopController;
  final TextEditingController timeController;
  final dialogKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Add Routes",
            style: AppText.xLarge,
          ),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          )
        ],
      ),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width / 2.5,
        child: Form(
          key: dialogKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                        label: 'From',
                        validator: (value) =>
                            Validations.isEmpty(value, 'starting point'),
                        hint: 'starting point',
                        controller: fromController),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: AppTextField(
                        label: 'To',
                        validator: (value) =>
                            Validations.isEmpty(value, 'destination'),
                        hint: 'destination',
                        controller: toController),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                        label: 'Stop',
                        validator: (value) =>
                            Validations.isEmpty(value, 'stop'),
                        hint: 'enter stop name',
                        controller: stopController),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: AppTextField(
                        label: 'Time',
                        validator: (value) =>
                            Validations.isEmpty(value, 'time'),
                        hint: 'enter reaching time',
                        isReadOnly: true,
                        onTap: () {
                          showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            initialEntryMode: TimePickerEntryMode.inputOnly,
                          ).then((value) {
                            if (value != null) {
                              timeController.text = value.format(context);
                            }
                          });
                        },
                        controller: timeController),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: AppOutLineButton(
                        onPressed: () {
                          if (dialogKey.currentState!.validate()) {}
                        },
                        label: 'Add again'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                      child: AppButton(
                    onPressed: () {
                      if (dialogKey.currentState!.validate()) {}
                    },
                    label: 'Finish',
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
