import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final EdgeInsetsGeometry? margin;
  const Mybutton({super.key, required this.text, this.onPressed,this.style, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin!,
      child:ElevatedButton(
      
      onPressed: onPressed,
      child: Text(text),
      style: style,
      )
    );
  }
}