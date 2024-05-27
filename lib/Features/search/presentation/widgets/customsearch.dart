import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeSearchTextFiled extends StatelessWidget {
  const CustomeSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search...',
        suffixIcon: const Opacity(
          opacity: .8,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
