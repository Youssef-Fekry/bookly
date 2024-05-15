import 'package:flutter/material.dart';
import 'Featured_listview.dart';
import 'custome_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomeAppBar(),
        FearuredBooksListView(),
      ],
    );
  }
}
