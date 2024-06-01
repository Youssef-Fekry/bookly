class BookEntity {
  final String? bookId;
  final String? img;
  final String? authorname;
  final String? title;
  final num? price;
  final num? rating;

  BookEntity(
      {required this.bookId,
      required this.img,
      required this.authorname,
      required this.title,
      required this.price,
      required this.rating});
}
