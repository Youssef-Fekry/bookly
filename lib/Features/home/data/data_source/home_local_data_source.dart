import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';


abstract class HomeRemoteDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewstBooks();
}


class HomeLocalDataSourceImp extends HomeRemoteDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    throw UnimplementedError();
  }



  @override
  List<BookEntity> fetchNewstBooks() {
    throw UnimplementedError();
  }
}