import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mytextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool numericOnly;
  final bool isPassword;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? hintColor;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final double? width;
  final double? height;

  const Mytextfield({
    super.key,
    required this.hint,
    required this.controller,
    this.numericOnly = false,
    this.isPassword = false,
    this.fillColor,
    this.borderColor,
    this.textColor,
    this.hintColor,
    this.borderRadius = 10,
    this.contentPadding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: hintColor),
        filled: fillColor != null,
        fillColor: fillColor,
        contentPadding: contentPadding,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: borderColor != null
              ? BorderSide(color: borderColor!, width: 1)
              : const BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Theme.of(context).primaryColor,
            width: 1.5,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: borderColor != null
              ? BorderSide(color: borderColor!)
              : const BorderSide(),
        ),
      ),
      keyboardType: numericOnly ? TextInputType.number : TextInputType.text,
      inputFormatters: numericOnly
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,
    );
  }
}
