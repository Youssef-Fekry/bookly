import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity extends HiveObject {
  @HiveField(0)
  final String? bookId;
  @HiveField(1)
  final String? img;
  @HiveField(2)
  final String? authorname;
  @HiveField(3)
  final String? title;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;

  BookEntity(
      {required this.bookId,
      required this.img,
      required this.authorname,
      required this.title,
      required this.price,
      required this.rating});
}
