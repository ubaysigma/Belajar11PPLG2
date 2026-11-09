import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;

  const Mybutton({
    super.key,
    required this.text,
    this.onPressed,
    this.style,
    this.margin = EdgeInsets.zero,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Text(text),
    );

    if (width != null || height != null) {
      button = SizedBox(
        width: width,
        height: height,
        child: button,
      );
    }

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: button,
    );
  }
}
