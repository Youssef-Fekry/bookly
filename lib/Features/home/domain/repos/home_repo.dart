import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<List<Either< Failure ,List<BookEntity>>>> fetchFeaturedBooks();
  Future<List<Either< Failure ,List<BookEntity>>>> fetchNewstBooks();
}
