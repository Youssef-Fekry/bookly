import 'package:flutter/material.dart';

import '../../../../../core/utils/assetsdata.dart';

class FeaturedListViewitem extends StatelessWidget {
  const FeaturedListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
