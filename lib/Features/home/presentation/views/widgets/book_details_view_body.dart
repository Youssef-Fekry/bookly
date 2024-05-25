import 'package:bokly_app/Features/home/presentation/views/widgets/book_detials_custom_app_bar.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomeBookDetialsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .3),
          child: const CustomeBookItem(),
        ),
        const SizedBox(
          height: 43,
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
      ],
    );
  }
}
