import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bokly_app/core/errors/failure.dart';
import 'package:bokly_app/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUsecase extends Usecase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUsecase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: param
    );
  }
}
