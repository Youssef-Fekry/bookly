import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {super.key,
      required this.backgroundcolor,
      required this.texColor,
      this.borderRadius,
      required this.text,
      this.fontsize});

  final String text;
  final Color backgroundcolor;
  final Color texColor;
  final BorderRadius? borderRadius;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(18),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle16
              .copyWith(color: texColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
