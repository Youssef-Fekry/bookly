import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomeBookItem extends StatelessWidget {
  const CustomeBookItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}


// Container(
//         height: 100,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//             image: const DecorationImage(
//               fit: BoxFit.fill,
//               image: AssetImage(AssetsData.testImage),
//             )),
//       ),