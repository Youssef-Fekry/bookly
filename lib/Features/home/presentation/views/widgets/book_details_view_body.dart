import 'package:bokly_app/Features/home/presentation/views/widgets/book_detials_custom_app_bar.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/simillar_book_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CustomeBookDetialsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SimillarBooksSection(),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
