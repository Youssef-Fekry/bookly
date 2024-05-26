import 'package:bokly_app/core/utils/custome_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomeButton(
              text: '19.99€',
              backgroundcolor: Colors.white,
              texColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(
                  12,
                ),
              ),
            ),
          ),
          Expanded(
            child: CustomeButton(
              fontsize: 16,
              text: 'Free preview',
              backgroundcolor: Color(0xffEF8262),
              texColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(
                  12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
