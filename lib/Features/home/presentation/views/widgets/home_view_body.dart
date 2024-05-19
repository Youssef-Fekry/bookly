import 'package:bokly_app/core/utils/assetsdata.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'featured_listview.dart';
import 'custome_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
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
            height: 4,
          ),
          BestsellerListViewITem(),
        ],
      ),
    );
  }
}

class BestsellerListViewITem extends StatelessWidget {
  const BestsellerListViewITem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  )),
            ),
          ),
          const Column(
            children: [Text('hiii')],
          )
        ],
      ),
    );
  }
}
