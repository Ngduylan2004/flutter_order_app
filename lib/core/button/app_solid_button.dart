// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_order_app/core/text/app_text_theme.dart';

class AppSolidButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double width;
  final double height;
  final void Function()? onPressed;

  const AppSolidButton({
    super.key,
    this.text,
    this.icon,
    required this.width,
    required this.height,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      onPressed: onPressed,
      // ignore: unnecessary_null_comparison
      child: text == null
          ? Icon(icon, color: Colors.white)
          : icon == null
              ? Text(
                  text!,
                  style: context.bodyLargeStyle?.copyWith(color: Colors.white),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text!,
                      style:
                          context.bodyLargeStyle?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Icon(icon, color: Colors.white),
                  ],
                ),
    );
  }
}
