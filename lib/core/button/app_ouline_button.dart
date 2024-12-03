import 'package:flutter/material.dart';

class AppOulineButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double? width;
  final double? height;

  const AppOulineButton(
      {super.key, required this.text, this.icon, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(width ?? 0, height ?? 0),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        onPressed: () {},
        child: icon == null
            ? Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            // ignore: unnecessary_null_comparison
            : text == null
                ? Icon(icon, color: Theme.of(context).colorScheme.primary)
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        icon,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ));
  }
}
