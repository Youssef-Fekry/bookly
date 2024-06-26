import 'package:bokly_app/Features/home/data/data_source/home_local_data_source.dart';
import 'package:bokly_app/Features/home/data/data_source/home_remote_data_source.dart';
import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bokly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0}) async {
    try {
      var cashedBooks = homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);

      if (cashedBooks.isNotEmpty) {
        return right(cashedBooks);
      }
      var books = await homeRemoteDataSource.fetchFeaturedBooks(
        pageNumber: pageNumber
      );

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
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
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
