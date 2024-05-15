import 'package:bokly_app/Features/home/presentation/views/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';

class FearuredBooksListView extends StatelessWidget {
  const FearuredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedListViewitem(),
            );
          }),
    );
  }
}
