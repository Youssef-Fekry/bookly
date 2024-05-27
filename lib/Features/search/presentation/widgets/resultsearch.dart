import 'package:bokly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class ResultSearchView extends StatelessWidget {
  const ResultSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BookListViewItem(),
          );
        });
  }
}
