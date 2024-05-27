import 'package:bokly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bokly_app/Features/search/presentation/widgets/customsearch.dart';
import 'package:bokly_app/Features/search/presentation/widgets/resultsearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomeSearchTextFiled(),
          Expanded(child: ResultSearchView()),
        ],
      ),
    );
  }
}
