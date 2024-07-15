import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final Widget? suffixIcon;
  const CustomTextformfield({super.key, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(.4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
