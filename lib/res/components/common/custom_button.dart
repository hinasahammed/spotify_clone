import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String btnText;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? icon;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.btnText,
      this.backgroundColor,
      this.icon,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: backgroundColor == null
              ? BorderSide(
                  color: theme.colorScheme.onSurface.withOpacity(.5),
                )
              : BorderSide.none,
        ),
      ),
      onPressed: onPressed,
      icon: icon,
      label: Text(
        btnText,
        style: theme.textTheme.bodyLarge!.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
