import 'package:bokly_app/Features/home/presentation/views/widgets/book_detials_custom_app_bar.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/books_action_button.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const CustomeBookDetialsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .3),
            child: const CustomeBookItem(),
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
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBookslistview(),
        ],
      ),
    );
  }
}
