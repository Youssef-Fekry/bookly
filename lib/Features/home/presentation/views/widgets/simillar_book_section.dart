import 'package:bokly_app/Features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimillarBooksSection extends StatelessWidget {
  const SimillarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBookslistview(),
      ],
    );
  }
}
