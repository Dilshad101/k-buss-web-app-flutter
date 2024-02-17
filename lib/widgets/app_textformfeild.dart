import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.label,
      required this.controller,
      this.hint,
      this.validator,
      this.onTap,
      this.isReadOnly = false});
  final String label;
  final String? hint;
  final TextEditingController controller;
  final FormFieldValidator? validator;
  final VoidCallback? onTap;
  final bool isReadOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppText.smallBold),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          readOnly: isReadOnly,
          onTap: onTap,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppText.small,
            constraints: const BoxConstraints(minHeight: 48, maxHeight: 70),
          ),
          validator: validator,
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
