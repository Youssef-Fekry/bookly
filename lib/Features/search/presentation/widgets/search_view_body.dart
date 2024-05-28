import 'package:bokly_app/Features/search/presentation/widgets/customsearch.dart';
import 'package:bokly_app/Features/search/presentation/widgets/resultsearch.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeSearchTextFiled(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: ResultSearchView()),
        ],
      ),
    );
  }
}
