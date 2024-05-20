import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';
import 'featured_listview.dart';
import 'custome_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(),
          FearuredBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestsellerListViewITem(),
        ],
      ),
    );
  }
}
