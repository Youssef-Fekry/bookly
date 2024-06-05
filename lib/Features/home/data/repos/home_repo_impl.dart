import 'package:bokly_app/Features/home/data/data_source/home_local_data_source.dart';
import 'package:bokly_app/Features/home/data/data_source/home_remote_data_source.dart';
import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bokly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var cashedBooks = homeLocalDataSource.fetchFeaturedBooks();

      if (cashedBooks.isNotEmpty) {
        return right(cashedBooks);
      }
      var books = await homeRemoteDataSource.fetchFeaturedBooks();

      return right(books);
    } catch (e) {
      return left(ServerFailure(toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewstBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewstBooks();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewstBooks();

      return right(books);
    } catch (e) {
      return left(ServerFailure(toString()));
    }
  }
}
