import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, label, hint, icon;
  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.label,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword ? true : false,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    );
  }
}
