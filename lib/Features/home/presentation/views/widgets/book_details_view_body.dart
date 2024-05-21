import 'package:bokly_app/Features/home/presentation/views/widgets/book_detials_custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomeBookDetialsAppBar(),
      ],
    );
  }
}
