import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewstBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
  
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewstBooks() {
  
    throw UnimplementedError();
  }
}
