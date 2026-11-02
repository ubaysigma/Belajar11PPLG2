import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mytextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool numericOnly;


  const Mytextfield({
    super.key,
    required this.hint,
    required this.controller,
    this.numericOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(hintText: hint, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      keyboardType: numericOnly ? TextInputType.number : TextInputType.text,
      inputFormatters: numericOnly?
          [FilteringTextInputFormatter.digitsOnly]
          : null,
    );
  }
}
