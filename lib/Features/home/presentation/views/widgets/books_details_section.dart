import 'package:bokly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/books_action_button.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .3),
          child: const CustomeBookItem(image: '',),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The SOUL Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 10,
        ),
        const BookActions(),
      ],
    );
  }
}
