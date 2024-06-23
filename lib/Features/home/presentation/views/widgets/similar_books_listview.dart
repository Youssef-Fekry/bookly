import 'package:bokly_app/Features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBookslistview extends StatelessWidget {
  const SimilarBookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomeBookItem(image: '',),
          );
        },
      ),
    );
  }
}
